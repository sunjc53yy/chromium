# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := skia_skia_opts_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	third_party/skia/src/opts/SkBitmapFilter_opts_SSE2.cpp \
	third_party/skia/src/opts/SkBitmapProcState_opts_SSE2.cpp \
	third_party/skia/src/opts/SkBlitRect_opts_SSE2.cpp \
	third_party/skia/src/opts/SkBlitRow_opts_SSE2.cpp \
	third_party/skia/src/opts/SkBlurImage_opts_SSE2.cpp \
	third_party/skia/src/opts/SkMorphology_opts_SSE2.cpp \
	third_party/skia/src/opts/SkTextureCompression_opts_none.cpp \
	third_party/skia/src/opts/SkUtils_opts_SSE2.cpp \
	third_party/skia/src/opts/SkXfermode_opts_SSE2.cpp


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
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
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_IGNORE_GPU_LAYER_HOISTING' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_ALLOW_STATIC_GLOBAL_INITIALIZERS=0' \
	'-DSK_DISABLE_OFFSETIMAGEFILTER_OPTIMIZATION' \
	'-DIGNORE_ROT_AA_RECT_OPT' \
	'-DSK_IGNORE_BLURRED_RRECT_OPT' \
	'-DSK_GDI_ALWAYS_USE_TEXTMETRICS_FOR_FONT_METRICS' \
	'-DSK_DEFAULT_FONT_CACHE_LIMIT=(1*1024*1024)' \
	'-DSK_USE_DISCARDABLE_SCALEDIMAGECACHE' \
	'-DSK_GAMMA_APPLY_TO_A8' \
	'-DSK_GAMMA_EXPONENT=1.4' \
	'-DSK_GAMMA_CONTRAST=0.0' \
	'-DSK_USE_POSIX_THREADS' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
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
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/src/opts \
	$(LOCAL_PATH)/third_party/skia/src/utils \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-unused-local-typedefs \
	-Wno-format \
	-m64 \
	-march=x86-64 \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Wno-unused-but-set-variable \
	-Wno-address \
	-Wno-format-security \
	-Wno-return-type \
	-Wno-sequence-point \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-funwind-tables \
	-O2

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
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_SUPPORT_GPU=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DSK_ENABLE_LEGACY_API_ALIASING=1' \
	'-DSK_ATTR_DEPRECATED=SK_NOTHING_ARG1' \
	'-DGR_GL_IGNORE_ES3_MSAA=0' \
	'-DSK_WILL_NEVER_DRAW_PERSPECTIVE_TEXT' \
	'-DSK_FM_NEW_MATCH_FAMILY_STYLE_CHARACTER=1' \
	'-DSK_SUPPORT_LEGACY_TEXTRENDERMODE' \
	'-DSK_IGNORE_GPU_LAYER_HOISTING' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DSK_ALLOW_STATIC_GLOBAL_INITIALIZERS=0' \
	'-DSK_DISABLE_OFFSETIMAGEFILTER_OPTIMIZATION' \
	'-DIGNORE_ROT_AA_RECT_OPT' \
	'-DSK_IGNORE_BLURRED_RRECT_OPT' \
	'-DSK_GDI_ALWAYS_USE_TEXTMETRICS_FOR_FONT_METRICS' \
	'-DSK_DEFAULT_FONT_CACHE_LIMIT=(1*1024*1024)' \
	'-DSK_USE_DISCARDABLE_SCALEDIMAGECACHE' \
	'-DSK_GAMMA_APPLY_TO_A8' \
	'-DSK_GAMMA_EXPONENT=1.4' \
	'-DSK_GAMMA_CONTRAST=0.0' \
	'-DSK_USE_POSIX_THREADS' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/src/opts \
	$(LOCAL_PATH)/third_party/skia/src/utils \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo \
	-Wno-non-virtual-dtor


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
LOCAL_ASFLAGS := $(LOCAL_CFLAGS)
### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_FDO_SUPPORT := true
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: skia_skia_opts_gyp

# Alias gyp target name.
.PHONY: skia_opts
skia_opts: skia_skia_opts_gyp

include $(BUILD_STATIC_LIBRARY)
