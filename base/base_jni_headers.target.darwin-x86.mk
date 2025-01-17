# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := base_base_jni_headers_gyp
LOCAL_MODULE_STEM := base_jni_headers
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,build_android_android_exports_gyp,,,$(GYP_VAR_PREFIX))/android_exports.stamp


### Generated for rule "base_base_gyp_base_jni_headers_target_generate_jni_headers":
# "{'inputs': ['../base/android/jni_generator/jni_generator.py', '../android_webview/build/jarjar-rules.txt'], 'process_outputs_as_sources': '1', 'extension': 'java', 'outputs': ['$(gyp_shared_intermediate_dir)/base/jni/%(INPUT_ROOT)s_jni.h'], 'rule_name': 'generate_jni_headers', 'rule_sources': ['android/java/src/org/chromium/base/ApplicationStatus.java', 'android/java/src/org/chromium/base/BuildInfo.java', 'android/java/src/org/chromium/base/CommandLine.java', 'android/java/src/org/chromium/base/ContentUriUtils.java', 'android/java/src/org/chromium/base/CpuFeatures.java', 'android/java/src/org/chromium/base/EventLog.java', 'android/java/src/org/chromium/base/FieldTrialList.java', 'android/java/src/org/chromium/base/ImportantFileWriterAndroid.java', 'android/java/src/org/chromium/base/JNIUtils.java', 'android/java/src/org/chromium/base/library_loader/LibraryLoader.java', 'android/java/src/org/chromium/base/LocaleUtils.java', 'android/java/src/org/chromium/base/MemoryPressureListener.java', 'android/java/src/org/chromium/base/JavaHandlerThread.java', 'android/java/src/org/chromium/base/PathService.java', 'android/java/src/org/chromium/base/PathUtils.java', 'android/java/src/org/chromium/base/PowerMonitor.java', 'android/java/src/org/chromium/base/SystemMessageHandler.java', 'android/java/src/org/chromium/base/SysUtils.java', 'android/java/src/org/chromium/base/ThreadUtils.java', 'android/java/src/org/chromium/base/TraceEvent.java'], 'action': ['../base/android/jni_generator/jni_generator.py', '--input_file', '$(RULE_SOURCES)', '--output_dir', '$(gyp_shared_intermediate_dir)/base/jni', '--includes', 'base/android/jni_generator/jni_generator_helper.h', '--optimize_generation', '0', '--jarjar', '../android_webview/build/jarjar-rules.txt', '--ptr_type', 'long', '--native_exports'], 'message': 'Generating JNI bindings from $(RULE_SOURCES)'}":
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/ApplicationStatus.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/ApplicationStatus.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/BuildInfo.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/BuildInfo.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/CommandLine.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/CommandLine.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/ContentUriUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/ContentUriUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/CpuFeatures.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/CpuFeatures.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/EventLog.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/EventLog.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/FieldTrialList.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/FieldTrialList.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/ImportantFileWriterAndroid.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/ImportantFileWriterAndroid.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/JNIUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/JNIUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/library_loader/LibraryLoader.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/library_loader/LibraryLoader.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/LocaleUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/LocaleUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/MemoryPressureListener.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/MemoryPressureListener.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/JavaHandlerThread.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/JavaHandlerThread.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/PathService.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/PathService.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/PathUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/PathUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/PowerMonitor.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/PowerMonitor.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/SystemMessageHandler.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/SystemMessageHandler.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/SysUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/SysUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/ThreadUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/ThreadUtils.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports


$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h: $(LOCAL_PATH)/base/android/java/src/org/chromium/base/TraceEvent.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/base/jni; cd $(gyp_local_path)/base; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/base/TraceEvent.java --output_dir "$(gyp_shared_intermediate_dir)/base/jni" --includes base/android/jni_generator/jni_generator_helper.h --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt --ptr_type long --native_exports



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	$(gyp_shared_intermediate_dir)/base/jni/ApplicationStatus_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/BuildInfo_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/CommandLine_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ContentUriUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/CpuFeatures_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/EventLog_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/FieldTrialList_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ImportantFileWriterAndroid_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/JNIUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/LibraryLoader_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/LocaleUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/MemoryPressureListener_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/JavaHandlerThread_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PathService_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PathUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/PowerMonitor_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/SystemMessageHandler_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/SysUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/ThreadUtils_jni.h \
	$(gyp_shared_intermediate_dir)/base/jni/TraceEvent_jni.h

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-fno-stack-protector \
	-Os \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(gyp_shared_intermediate_dir)


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-fno-stack-protector \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables

MY_DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_BROWSER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DDISCARDABLE_MEMORY_ALWAYS_SUPPORTED_NATIVELY' \
	'-DSYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE' \
	'-DDONT_EMBED_BUILD_METADATA' \
	'-DCLD_VERSION=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_BASIC_PRINTING=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DVIDEO_HOLE=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir)


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: base_base_jni_headers_gyp

# Alias gyp target name.
.PHONY: base_jni_headers
base_jni_headers: base_base_jni_headers_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
