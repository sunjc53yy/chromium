// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef ANDROID_WEBVIEW_NATIVE_AW_WEB_CONTENTS_DELEGATE_H_
#define ANDROID_WEBVIEW_NATIVE_AW_WEB_CONTENTS_DELEGATE_H_

#include <jni.h>

#include "components/web_contents_delegate_android/web_contents_delegate_android.h"

namespace android_webview {

// WebView specific WebContentsDelegate.
// Should contain WebContentsDelegate code required by WebView that should not
// be part of the Chromium Android port.
class AwWebContentsDelegate
    : public web_contents_delegate_android::WebContentsDelegateAndroid {
 public:
  AwWebContentsDelegate(JNIEnv* env, jobject obj);
  virtual ~AwWebContentsDelegate();
  virtual content::JavaScriptDialogManager* GetJavaScriptDialogManager()
      override;
  virtual void FindReply(content::WebContents* web_contents,
                         int request_id,
                         int number_of_matches,
                         const gfx::Rect& selection_rect,
                         int active_match_ordinal,
                         bool final_update) override;
  virtual void CanDownload(content::RenderViewHost* source,
                           const GURL& url,
                           const std::string& request_method,
                           const base::Callback<void(bool)>& callback) override;
  virtual void RunFileChooser(
      content::WebContents* web_contents,
      const content::FileChooserParams& params) override;
  virtual void AddNewContents(content::WebContents* source,
                              content::WebContents* new_contents,
                              WindowOpenDisposition disposition,
                              const gfx::Rect& initial_pos,
                              bool user_gesture,
                              bool* was_blocked) override;

  virtual void NavigationStateChanged(
      const content::WebContents* source,
      content::InvalidateTypes changed_flags) override;
  virtual void WebContentsCreated(content::WebContents* source_contents,
                                  int opener_render_frame_id,
                                  const base::string16& frame_name,
                                  const GURL& target_url,
                                  content::WebContents* new_contents) override;

  virtual void CloseContents(content::WebContents* source) override;
  virtual void ActivateContents(content::WebContents* contents) override;
  virtual void RequestMediaAccessPermission(
      content::WebContents* web_contents,
      const content::MediaStreamRequest& request,
      const content::MediaResponseCallback& callback) override;
  virtual void ToggleFullscreenModeForTab(content::WebContents* web_contents,
                                          bool enter_fullscreen) override;
  virtual bool IsFullscreenForTabOrPending(
      const content::WebContents* web_contents) const override;

 private:
  bool is_fullscreen_;
};

bool RegisterAwWebContentsDelegate(JNIEnv* env);

}  // namespace android_webview

#endif  // ANDROID_WEBVIEW_NATIVE_AW_WEB_CONTENTS_DELEGATE_H_
