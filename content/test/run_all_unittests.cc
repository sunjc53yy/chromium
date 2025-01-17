// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "base/bind.h"
#include "base/test/launcher/unit_test_launcher.h"
#include "content/app/mojo/mojo_init.h"
#include "content/public/test/unittest_test_suite.h"
#include "content/test/content_test_suite.h"

#if defined(OS_ANDROID)
#include "content/browser/gpu/browser_gpu_channel_host_factory.h"
#endif

int main(int argc, char** argv) {
#if defined(OS_ANDROID)
  // Android wants to call GetChannelId() (even though GPU channels
  // are not getting created in content_unittests).
  content::BrowserGpuChannelHostFactory::Initialize(false);
#endif
#if !defined(OS_IOS)
  content::InitializeMojo();
#endif
  content::UnitTestTestSuite test_suite(
      new content::ContentTestSuite(argc, argv));

  return base::LaunchUnitTests(
      argc, argv, base::Bind(&content::UnitTestTestSuite::Run,
                             base::Unretained(&test_suite)));
}
