# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_libwebp_libwebp_gyp
LOCAL_MODULE_STEM := webp
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_dec_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_dec_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_demux_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_demux_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_dsp_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_dsp_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_dsp_neon_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_dsp_neon_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_enc_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_enc_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libwebp_libwebp_utils_gyp,,,$(GYP_VAR_PREFIX))/third_party_libwebp_libwebp_utils_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_libwebp_libwebp_gyp

# Alias gyp target name.
.PHONY: libwebp
libwebp: third_party_libwebp_libwebp_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
