// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "android_webview/browser/aw_browser_context.h"

#include "android_webview/browser/aw_form_database_service.h"
#include "android_webview/browser/aw_pref_store.h"
#include "android_webview/browser/aw_quota_manager_bridge.h"
#include "android_webview/browser/aw_resource_context.h"
#include "android_webview/browser/jni_dependency_factory.h"
#include "android_webview/browser/net/aw_url_request_context_getter.h"
#include "android_webview/browser/net/init_native_callback.h"
#include "base/base_paths_android.h"
#include "base/bind.h"
#include "base/path_service.h"
#include "base/prefs/pref_registry_simple.h"
#include "base/prefs/pref_service.h"
#include "base/prefs/pref_service_factory.h"
#include "components/autofill/core/common/autofill_pref_names.h"
#include "components/data_reduction_proxy/core/browser/data_reduction_proxy_config_service.h"
#include "components/data_reduction_proxy/core/browser/data_reduction_proxy_prefs.h"
#include "components/data_reduction_proxy/core/browser/data_reduction_proxy_settings.h"
#include "components/data_reduction_proxy/core/browser/data_reduction_proxy_statistics_prefs.h"
#include "components/data_reduction_proxy/core/common/data_reduction_proxy_params.h"
#include "components/user_prefs/user_prefs.h"
#include "components/visitedlink/browser/visitedlink_master.h"
#include "content/public/browser/browser_thread.h"
#include "content/public/browser/ssl_host_state_delegate.h"
#include "content/public/browser/storage_partition.h"
#include "content/public/browser/web_contents.h"
#include "net/cookies/cookie_store.h"
#include "net/proxy/proxy_config_service_android.h"
#include "net/proxy/proxy_service.h"

using base::FilePath;
using content::BrowserThread;
using data_reduction_proxy::DataReductionProxyConfigService;
using data_reduction_proxy::DataReductionProxySettings;

namespace android_webview {

namespace {

// Shows notifications which correspond to PersistentPrefStore's reading errors.
void HandleReadError(PersistentPrefStore::PrefReadError error) {
}

void DeleteDirRecursively(const base::FilePath& path) {
  if (!base::DeleteFile(path, true)) {
    // Deleting a non-existent file is considered successful, so this will
    // trigger only in case of real errors.
    LOG(WARNING) << "Failed to delete " << path.AsUTF8Unsafe();
  }
}

AwBrowserContext* g_browser_context = NULL;

net::ProxyConfigService* CreateProxyConfigService() {
  net::ProxyConfigServiceAndroid* config_service =
      static_cast<net::ProxyConfigServiceAndroid*>(
          net::ProxyService::CreateSystemProxyConfigService(
              BrowserThread::GetMessageLoopProxyForThread(BrowserThread::IO),
              nullptr /* Ignored on Android */ ));
  config_service->set_exclude_pac_url(true);
  return config_service;
}

}  // namespace

// Data reduction proxy is disabled by default.
bool AwBrowserContext::data_reduction_proxy_enabled_ = false;

// Delete the legacy cache dir (in the app data dir) in 10 seconds after init.
int AwBrowserContext::legacy_cache_removal_delay_ms_ = 10000;

AwBrowserContext::AwBrowserContext(
    const FilePath path,
    JniDependencyFactory* native_factory)
    : context_storage_path_(path),
      native_factory_(native_factory) {
  DCHECK(!g_browser_context);
  g_browser_context = this;

  // This constructor is entered during the creation of ContentBrowserClient,
  // before browser threads are created. Therefore any checks to enforce
  // threading (such as BrowserThread::CurrentlyOn()) will fail here.
}

AwBrowserContext::~AwBrowserContext() {
  DCHECK_EQ(this, g_browser_context);
  g_browser_context = NULL;
}

// static
AwBrowserContext* AwBrowserContext::GetDefault() {
  // TODO(joth): rather than store in a global here, lookup this instance
  // from the Java-side peer.
  return g_browser_context;
}

// static
AwBrowserContext* AwBrowserContext::FromWebContents(
    content::WebContents* web_contents) {
  // This is safe; this is the only implementation of the browser context.
  return static_cast<AwBrowserContext*>(web_contents->GetBrowserContext());
}

// static
void AwBrowserContext::SetDataReductionProxyEnabled(bool enabled) {
  // Cache the setting value. It is possible that data reduction proxy is
  // not created yet.
  data_reduction_proxy_enabled_ = enabled;
  AwBrowserContext* context = AwBrowserContext::GetDefault();
  // Can't enable Data reduction proxy if user pref service is not ready.
  if (context == NULL || context->user_pref_service_.get() == NULL)
    return;
  DataReductionProxySettings* proxy_settings =
      context->GetDataReductionProxySettings();
  if (proxy_settings == NULL)
    return;

  context->CreateDataReductionProxyStatisticsIfNecessary();
  proxy_settings->SetDataReductionProxyStatisticsPrefs(
      context->data_reduction_proxy_statistics_.get());
  proxy_settings->SetDataReductionProxyEnabled(data_reduction_proxy_enabled_);
}

// static
void AwBrowserContext::SetLegacyCacheRemovalDelayForTest(int delay_ms) {
  legacy_cache_removal_delay_ms_ = delay_ms;
}

void AwBrowserContext::PreMainMessageLoopRun() {
  cookie_store_ = CreateCookieStore(this);
  data_reduction_proxy_settings_.reset(
      new DataReductionProxySettings(
          new data_reduction_proxy::DataReductionProxyParams(
              data_reduction_proxy::DataReductionProxyParams::kAllowed)));
  scoped_ptr<DataReductionProxyConfigService>
      data_reduction_proxy_config_service(
          new DataReductionProxyConfigService(
              scoped_ptr<net::ProxyConfigService>(
                  CreateProxyConfigService()).Pass()));
  if (data_reduction_proxy_settings_.get()) {
      data_reduction_proxy_configurator_.reset(
          new data_reduction_proxy::DataReductionProxyConfigTracker(
              base::Bind(&DataReductionProxyConfigService::UpdateProxyConfig,
                         base::Unretained(
                             data_reduction_proxy_config_service.get())),
            BrowserThread::GetMessageLoopProxyForThread(BrowserThread::IO)));
    data_reduction_proxy_settings_->SetProxyConfigurator(
        data_reduction_proxy_configurator_.get());
  }

  FilePath cache_path;
  const FilePath fallback_cache_dir =
      GetPath().Append(FILE_PATH_LITERAL("Cache"));
  if (PathService::Get(base::DIR_CACHE, &cache_path)) {
    cache_path = cache_path.Append(
        FILE_PATH_LITERAL("org.chromium.android_webview"));
    // Delay the legacy dir removal to not impact startup performance.
    BrowserThread::PostDelayedTask(
        BrowserThread::FILE, FROM_HERE,
        base::Bind(&DeleteDirRecursively, fallback_cache_dir),
        base::TimeDelta::FromMilliseconds(legacy_cache_removal_delay_ms_));
  } else {
    cache_path = fallback_cache_dir;
    LOG(WARNING) << "Failed to get cache directory for Android WebView. "
                 << "Using app data directory as a fallback.";
  }
  url_request_context_getter_ =
      new AwURLRequestContextGetter(cache_path,
                                    cookie_store_.get(),
                                    data_reduction_proxy_config_service.Pass());

  visitedlink_master_.reset(
      new visitedlink::VisitedLinkMaster(this, this, false));
  visitedlink_master_->Init();

  form_database_service_.reset(
      new AwFormDatabaseService(context_storage_path_));
}

void AwBrowserContext::AddVisitedURLs(const std::vector<GURL>& urls) {
  DCHECK(visitedlink_master_);
  visitedlink_master_->AddURLs(urls);
}

net::URLRequestContextGetter* AwBrowserContext::CreateRequestContext(
    content::ProtocolHandlerMap* protocol_handlers,
    content::URLRequestInterceptorScopedVector request_interceptors) {
  // This function cannot actually create the request context because
  // there is a reentrant dependency on GetResourceContext() via
  // content::StoragePartitionImplMap::Create(). This is not fixable
  // until http://crbug.com/159193. Until then, assert that the context
  // has already been allocated and just handle setting the protocol_handlers.
  DCHECK(url_request_context_getter_.get());
  url_request_context_getter_->SetHandlersAndInterceptors(
      protocol_handlers, request_interceptors.Pass());
  return url_request_context_getter_.get();
}

net::URLRequestContextGetter*
AwBrowserContext::CreateRequestContextForStoragePartition(
    const base::FilePath& partition_path,
    bool in_memory,
    content::ProtocolHandlerMap* protocol_handlers,
    content::URLRequestInterceptorScopedVector request_interceptors) {
  NOTREACHED();
  return NULL;
}

AwQuotaManagerBridge* AwBrowserContext::GetQuotaManagerBridge() {
  if (!quota_manager_bridge_.get()) {
    quota_manager_bridge_ = native_factory_->CreateAwQuotaManagerBridge(this);
  }
  return quota_manager_bridge_.get();
}

AwFormDatabaseService* AwBrowserContext::GetFormDatabaseService() {
  return form_database_service_.get();
}

DataReductionProxySettings* AwBrowserContext::GetDataReductionProxySettings() {
  return data_reduction_proxy_settings_.get();
}

AwURLRequestContextGetter* AwBrowserContext::GetAwURLRequestContext() {
  return url_request_context_getter_.get();
}

// Create user pref service for autofill functionality.
void AwBrowserContext::CreateUserPrefServiceIfNecessary() {
  if (user_pref_service_)
    return;

  PrefRegistrySimple* pref_registry = new PrefRegistrySimple();
  // We only use the autocomplete feature of the Autofill, which is
  // controlled via the manager_delegate. We don't use the rest
  // of autofill, which is why it is hardcoded as disabled here.
  pref_registry->RegisterBooleanPref(
      autofill::prefs::kAutofillEnabled, false);
  pref_registry->RegisterDoublePref(
      autofill::prefs::kAutofillPositiveUploadRate, 0.0);
  pref_registry->RegisterDoublePref(
      autofill::prefs::kAutofillNegativeUploadRate, 0.0);
  data_reduction_proxy::RegisterSimpleProfilePrefs(pref_registry);

  base::PrefServiceFactory pref_service_factory;
  pref_service_factory.set_user_prefs(make_scoped_refptr(new AwPrefStore()));
  pref_service_factory.set_read_error_callback(base::Bind(&HandleReadError));
  user_pref_service_ = pref_service_factory.Create(pref_registry).Pass();

  user_prefs::UserPrefs::Set(this, user_pref_service_.get());

  if (data_reduction_proxy_settings_.get()) {
    data_reduction_proxy_settings_->InitDataReductionProxySettings(
        user_pref_service_.get(),
        GetRequestContext());
    data_reduction_proxy_settings_->MaybeActivateDataReductionProxy(true);

    SetDataReductionProxyEnabled(data_reduction_proxy_enabled_);
  }
}

base::FilePath AwBrowserContext::GetPath() const {
  return context_storage_path_;
}

bool AwBrowserContext::IsOffTheRecord() const {
  // Android WebView does not support off the record profile yet.
  return false;
}

net::URLRequestContextGetter* AwBrowserContext::GetRequestContext() {
  return GetDefaultStoragePartition(this)->GetURLRequestContext();
}

net::URLRequestContextGetter*
AwBrowserContext::GetRequestContextForRenderProcess(
    int renderer_child_id) {
  return GetRequestContext();
}

net::URLRequestContextGetter* AwBrowserContext::GetMediaRequestContext() {
  return GetRequestContext();
}

net::URLRequestContextGetter*
AwBrowserContext::GetMediaRequestContextForRenderProcess(
    int renderer_child_id) {
  return GetRequestContext();
}

net::URLRequestContextGetter*
AwBrowserContext::GetMediaRequestContextForStoragePartition(
    const base::FilePath& partition_path,
    bool in_memory) {
  NOTREACHED();
  return NULL;
}

content::ResourceContext* AwBrowserContext::GetResourceContext() {
  if (!resource_context_) {
    resource_context_.reset(
        new AwResourceContext(url_request_context_getter_.get()));
  }
  return resource_context_.get();
}

content::DownloadManagerDelegate*
AwBrowserContext::GetDownloadManagerDelegate() {
  return &download_manager_delegate_;
}

content::BrowserPluginGuestManager* AwBrowserContext::GetGuestManager() {
  return NULL;
}

storage::SpecialStoragePolicy* AwBrowserContext::GetSpecialStoragePolicy() {
  // Intentionally returning NULL as 'Extensions' and 'Apps' not supported.
  return NULL;
}

content::PushMessagingService* AwBrowserContext::GetPushMessagingService() {
  // TODO(johnme): Support push messaging in WebView.
  return NULL;
}

content::SSLHostStateDelegate* AwBrowserContext::GetSSLHostStateDelegate() {
  if (!ssl_host_state_delegate_.get()) {
    ssl_host_state_delegate_.reset(new AwSSLHostStateDelegate());
  }
  return ssl_host_state_delegate_.get();
}

void AwBrowserContext::RebuildTable(
    const scoped_refptr<URLEnumerator>& enumerator) {
  // Android WebView rebuilds from WebChromeClient.getVisitedHistory. The client
  // can change in the lifetime of this WebView and may not yet be set here.
  // Therefore this initialization path is not used.
  enumerator->OnComplete(true);
}

void AwBrowserContext::CreateDataReductionProxyStatisticsIfNecessary() {
  DCHECK(user_pref_service_.get());

  if (!data_reduction_proxy_statistics_.get()) {
    // We don't care about commit_delay for now. It is just a dummy value.
    base::TimeDelta commit_delay = base::TimeDelta::FromMinutes(60);
    data_reduction_proxy_statistics_ =
        scoped_ptr<data_reduction_proxy::DataReductionProxyStatisticsPrefs>(
            new data_reduction_proxy::DataReductionProxyStatisticsPrefs(
                user_pref_service_.get(),
                base::MessageLoopProxy::current(),
                commit_delay));
  }
}

}  // namespace android_webview
