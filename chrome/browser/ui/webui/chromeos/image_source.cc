// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/ui/webui/chromeos/image_source.h"

#include "base/bind.h"
#include "base/files/file_util.h"
#include "base/location.h"
#include "base/memory/ref_counted_memory.h"
#include "base/sequenced_task_runner.h"
#include "chrome/browser/chromeos/login/users/avatar/user_image_loader.h"
#include "chrome/common/url_constants.h"
#include "components/user_manager/user_image/user_image.h"
#include "content/public/browser/browser_thread.h"
#include "net/base/mime_util.h"

using content::BrowserThread;

namespace chromeos {
namespace {

const char* kWhitelistedFiles[] = {
  "fcc/label.png"
};

// Callback for user_manager::UserImageLoader.
void ImageLoaded(
    const content::URLDataSource::GotDataCallback& got_data_callback,
    const user_manager::UserImage& user_image) {
  DCHECK(BrowserThread::CurrentlyOn(BrowserThread::UI));

  if (user_image.has_raw_image())
    got_data_callback.Run(new base::RefCountedBytes(user_image.raw_image()));
  else
    got_data_callback.Run(NULL);
}

// Looks for the image at |path| under the shared assets directory.
void StartOnBlockingPool(
    const std::string& path,
    scoped_refptr<UserImageLoader> image_loader,
    const content::URLDataSource::GotDataCallback& got_data_callback,
    scoped_refptr<base::MessageLoopProxy> message_loop_proxy) {
  DCHECK(BrowserThread::GetBlockingPool()->RunsTasksOnCurrentThread());

  const base::FilePath asset_dir(FILE_PATH_LITERAL(chrome::kChromeOSAssetPath));
  const base::FilePath image_path = asset_dir.AppendASCII(path);
  if (base::PathExists(image_path)) {
    image_loader->Start(image_path.value(), 0,
                        base::Bind(&ImageLoaded, got_data_callback));
  } else {
    message_loop_proxy->PostTask(FROM_HERE,
                                 base::Bind(got_data_callback, nullptr));
  }
}

}  // namespace

ImageSource::ImageSource() : weak_factory_(this) {
  base::SequencedWorkerPool* blocking_pool =
      BrowserThread::GetBlockingPool();
  task_runner_ = blocking_pool->GetSequencedTaskRunnerWithShutdownBehavior(
      blocking_pool->GetSequenceToken(),
      base::SequencedWorkerPool::CONTINUE_ON_SHUTDOWN);
}

ImageSource::~ImageSource() {
}

std::string ImageSource::GetSource() const {
  return chrome::kChromeOSAssetHost;
}

void ImageSource::StartDataRequest(
    const std::string& path,
    int render_process_id,
    int render_frame_id,
    const content::URLDataSource::GotDataCallback& got_data_callback) {
  if (!IsWhitelisted(path)) {
    got_data_callback.Run(NULL);
    return;
  }

  if (!image_loader_.get()) {
    image_loader_ = new UserImageLoader(ImageDecoder::DEFAULT_CODEC,
                                        task_runner_);
  }

  content::BrowserThread::GetBlockingPool()->PostTask(
      FROM_HERE,
      base::Bind(&StartOnBlockingPool,
                 path,
                 image_loader_,
                 got_data_callback,
                 base::MessageLoopProxy::current()));
}

std::string ImageSource::GetMimeType(const std::string& path) const {
  std::string mime_type;
  std::string ext = base::FilePath(path).Extension();
  if (!ext.empty())
    net::GetWellKnownMimeTypeFromExtension(ext.substr(1), &mime_type);
  return mime_type;
}

bool ImageSource::IsWhitelisted(const std::string& path) const {
  const char** end = kWhitelistedFiles + arraysize(kWhitelistedFiles);
  return std::find(kWhitelistedFiles, end, path) != end;
}

}  // namespace chromeos
