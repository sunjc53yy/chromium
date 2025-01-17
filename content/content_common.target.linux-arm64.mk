# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := content_content_common_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,skia_skia_gyp,,,$(GYP_VAR_PREFIX))/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_headers_gyp,,,$(GYP_VAR_PREFIX))/blink_headers.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_accessibility_accessibility_gyp,,,$(GYP_VAR_PREFIX))/ui_accessibility_accessibility_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_accessibility_ax_gen_gyp,,,$(GYP_VAR_PREFIX))/ui_accessibility_ax_gen_gyp.a \
	$(call intermediates-dir-for,GYP,content_content_resources_gyp,,,$(GYP_VAR_PREFIX))/content_resources.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ipc_mojo_ipc_mojo_gyp,,,$(GYP_VAR_PREFIX))/ipc_mojo_ipc_mojo_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,mojo_public_mojo_application_bindings_gyp,,,$(GYP_VAR_PREFIX))/mojo_public_mojo_application_bindings_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_gyp,,,$(GYP_VAR_PREFIX))/blink.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_gl_gl_gyp,,,$(GYP_VAR_PREFIX))/ui_gl_gl_gyp.a \
	$(call intermediates-dir-for,GYP,content_content_jni_headers_gyp,,,$(GYP_VAR_PREFIX))/content_jni_headers.stamp \
	$(call intermediates-dir-for,GYP,content_common_aidl_gyp,,,$(GYP_VAR_PREFIX))/common_aidl.stamp

### Rules for action "generate_webkit_version":
$(gyp_shared_intermediate_dir)/webkit_version.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/webkit_version.h: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/webkit_version.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/webkit_version.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/webkit_version.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/webkit_version.h: $(LOCAL_PATH)/build/util/version.py $(LOCAL_PATH)/build/util/LASTCHANGE.blink $(LOCAL_PATH)/content/webkit_version.h.in $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: content_content_gyp_content_common_target_generate_webkit_version ($@)"
	$(hide)cd $(gyp_local_path)/content; mkdir -p $(gyp_shared_intermediate_dir); python ../build/util/version.py -f ../build/util/LASTCHANGE.blink webkit_version.h.in "$(gyp_shared_intermediate_dir)/webkit_version.h"



GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/webkit_version.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	content/public/common/child_process_host_delegate.cc \
	content/public/common/color_suggestion.cc \
	content/public/common/common_param_traits.cc \
	content/public/common/content_client.cc \
	content/public/common/content_constants.cc \
	content/public/common/content_switches.cc \
	content/public/common/context_menu_params.cc \
	content/public/common/drop_data.cc \
	content/public/common/favicon_url.cc \
	content/public/common/file_chooser_file_info.cc \
	content/public/common/file_chooser_params.cc \
	content/public/common/frame_navigate_params.cc \
	content/public/common/geoposition.cc \
	content/public/common/gpu_memory_stats.cc \
	content/public/common/manifest.cc \
	content/public/common/media_stream_request.cc \
	content/public/common/menu_item.cc \
	content/public/common/page_state.cc \
	content/public/common/push_messaging_status.cc \
	content/public/common/renderer_preferences.cc \
	content/public/common/resource_devtools_info.cc \
	content/public/common/resource_response.cc \
	content/public/common/resource_response_info.cc \
	content/public/common/resource_type.cc \
	content/public/common/sandboxed_process_launcher_delegate.cc \
	content/public/common/show_desktop_notification_params.cc \
	content/public/common/signed_certificate_timestamp_id_and_status.cc \
	content/public/common/speech_recognition_result.cc \
	content/public/common/ssl_status.cc \
	content/public/common/url_constants.cc \
	content/public/common/url_utils.cc \
	content/public/common/web_preferences.cc \
	content/public/common/webplugininfo.cc \
	content/public/common/window_container_type.cc \
	content/common/android/address_parser.cc \
	content/common/android/address_parser_internal.cc \
	content/common/android/common_jni_registrar.cc \
	content/common/android/gin_java_bridge_errors.cc \
	content/common/android/gin_java_bridge_value.cc \
	content/common/android/hash_set.cc \
	content/common/android/surface_texture_manager.cc \
	content/common/android/surface_texture_peer.cc \
	content/common/appcache_interfaces.cc \
	content/common/browser_plugin/browser_plugin_constants.cc \
	content/common/cc_messages.cc \
	content/common/child_process_host_impl.cc \
	content/common/content_constants_internal.cc \
	content/common/content_ipc_logging.cc \
	content/common/content_message_generator.cc \
	content/common/content_param_traits.cc \
	content/common/content_paths.cc \
	content/common/content_switches_internal.cc \
	content/common/cookie_data.cc \
	content/common/cursors/webcursor.cc \
	content/common/cursors/webcursor_android.cc \
	content/common/dom_storage/dom_storage_map.cc \
	content/common/font_list.cc \
	content/common/font_list_android.cc \
	content/common/frame_param.cc \
	content/common/gamepad_param_traits.cc \
	content/common/gamepad_user_gesture.cc \
	content/common/geofencing_status.cc \
	content/common/gpu/client/command_buffer_proxy_impl.cc \
	content/common/gpu/client/context_provider_command_buffer.cc \
	content/common/gpu/client/gl_helper.cc \
	content/common/gpu/client/gl_helper_readback_support.cc \
	content/common/gpu/client/gl_helper_scaling.cc \
	content/common/gpu/client/gpu_channel_host.cc \
	content/common/gpu/client/gpu_memory_buffer_factory_host.cc \
	content/common/gpu/client/gpu_memory_buffer_impl.cc \
	content/common/gpu/client/gpu_memory_buffer_impl_android.cc \
	content/common/gpu/client/gpu_memory_buffer_impl_ozone_native_buffer.cc \
	content/common/gpu/client/gpu_memory_buffer_impl_shared_memory.cc \
	content/common/gpu/client/gpu_video_decode_accelerator_host.cc \
	content/common/gpu/client/gpu_video_encode_accelerator_host.cc \
	content/common/gpu/client/webgraphicscontext3d_command_buffer_impl.cc \
	content/common/gpu/devtools_gpu_agent.cc \
	content/common/gpu/devtools_gpu_instrumentation.cc \
	content/common/gpu/gpu_channel.cc \
	content/common/gpu/gpu_channel_manager.cc \
	content/common/gpu/gpu_command_buffer_stub.cc \
	content/common/gpu/gpu_memory_buffer_factory_android.cc \
	content/common/gpu/gpu_memory_manager.cc \
	content/common/gpu/gpu_memory_manager_client.cc \
	content/common/gpu/gpu_memory_tracking.cc \
	content/common/gpu/gpu_surface_lookup.cc \
	content/common/gpu/image_transport_surface.cc \
	content/common/gpu/image_transport_surface_android.cc \
	content/common/gpu/media/gpu_video_decode_accelerator.cc \
	content/common/gpu/media/gpu_video_encode_accelerator.cc \
	content/common/gpu/null_transport_surface.cc \
	content/common/gpu/stream_texture_android.cc \
	content/common/gpu/sync_point_manager.cc \
	content/common/host_discardable_shared_memory_manager.cc \
	content/common/host_shared_bitmap_manager.cc \
	content/common/indexed_db/indexed_db_key.cc \
	content/common/indexed_db/indexed_db_key_path.cc \
	content/common/indexed_db/indexed_db_key_range.cc \
	content/common/indexed_db/indexed_db_param_traits.cc \
	content/common/input/did_overscroll_params.cc \
	content/common/input/gesture_event_stream_validator.cc \
	content/common/input/input_event.cc \
	content/common/input/input_event_stream_validator.cc \
	content/common/input/input_param_traits.cc \
	content/common/input/scoped_web_input_event.cc \
	content/common/input/synthetic_gesture_packet.cc \
	content/common/input/synthetic_gesture_params.cc \
	content/common/input/synthetic_pinch_gesture_params.cc \
	content/common/input/synthetic_smooth_scroll_gesture_params.cc \
	content/common/input/synthetic_tap_gesture_params.cc \
	content/common/input/synthetic_web_input_event_builders.cc \
	content/common/input/touch_event_stream_validator.cc \
	content/common/input/web_input_event_traits.cc \
	content/common/input/web_touch_event_traits.cc \
	content/common/inter_process_time_ticks_converter.cc \
	content/common/media/media_param_traits.cc \
	content/common/media/media_stream_options.cc \
	content/common/message_router.cc \
	content/common/mojo/service_registry_impl.cc \
	content/common/navigation_params.cc \
	content/common/net/url_fetcher.cc \
	content/common/net/url_request_user_data.cc \
	content/common/one_writer_seqlock.cc \
	content/common/page_state_serialization.cc \
	content/common/page_zoom.cc \
	content/common/process_type.cc \
	content/common/resource_messages.cc \
	content/common/resource_request_body.cc \
	content/common/sandbox_linux/android/sandbox_bpf_base_policy_android.cc \
	content/common/sandbox_linux/sandbox_bpf_base_policy_linux.cc \
	content/common/savable_url_schemes.cc \
	content/common/service_worker/service_worker_status_code.cc \
	content/common/service_worker/service_worker_types.cc \
	content/common/set_process_title.cc \
	content/common/ssl_status_serialization.cc \
	content/common/swapped_out_messages.cc \
	content/common/url_schemes.cc \
	content/common/user_agent.cc \
	content/common/webplugin_geometry.cc \
	content/common/websocket.cc \
	content/common/gpu/client/gpu_memory_buffer_impl_surface_texture.cc \
	content/common/gpu/gpu_memory_buffer_factory_surface_texture.cc \
	content/common/gpu/media/android_video_decode_accelerator.cc \
	content/common/gpu/media/android_video_encode_accelerator.cc


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
	-Os \
	-g \
	-gdwarf-4 \
	-fdata-sections \
	-ffunction-sections \
	-funwind-tables

MY_DEFS_Debug := \
	'-DCONTENT_IMPLEMENTATION' \
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
	'-DUSE_SECCOMP_BPF' \
	'-DMOJO_USE_SYSTEM_IMPL' \
	'-DPOSIX_AVOID_MMAP' \
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
	'-DSK_USE_POSIX_THREADS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
	'-DMEDIA_DISABLE_LIBVPX' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DFEATURE_ENABLE_SSL' \
	'-DFEATURE_ENABLE_VOICEMAIL' \
	'-DEXPAT_RELATIVE_PATH' \
	'-DGTEST_RELATIVE_PATH' \
	'-DNO_MAIN_THREAD_WRAPPING' \
	'-DNO_SOUND_SYSTEM' \
	'-DANDROID' \
	'-DPOSIX' \
	'-DWEBRTC_POSIX' \
	'-DXML_STATIC' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
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
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/ipc \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/content \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/libyuv \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/expat/files/lib


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
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-funwind-tables

MY_DEFS_Release := \
	'-DCONTENT_IMPLEMENTATION' \
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
	'-DUSE_SECCOMP_BPF' \
	'-DMOJO_USE_SYSTEM_IMPL' \
	'-DPOSIX_AVOID_MMAP' \
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
	'-DSK_USE_POSIX_THREADS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
	'-DMEDIA_DISABLE_LIBVPX' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DMESA_EGL_NO_X11_HEADERS' \
	'-DFEATURE_ENABLE_SSL' \
	'-DFEATURE_ENABLE_VOICEMAIL' \
	'-DEXPAT_RELATIVE_PATH' \
	'-DGTEST_RELATIVE_PATH' \
	'-DNO_MAIN_THREAD_WRAPPING' \
	'-DNO_SOUND_SYSTEM' \
	'-DANDROID' \
	'-DPOSIX' \
	'-DWEBRTC_POSIX' \
	'-DXML_STATIC' \
	'-DUSE_LIBPCI=1' \
	'-DUSE_OPENSSL=1' \
	'-DUSE_OPENSSL_CERTS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
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
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/ipc \
	$(LOCAL_PATH)/third_party/WebKit \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(gyp_shared_intermediate_dir)/ui/gl \
	$(LOCAL_PATH)/third_party/mesa/src/include \
	$(gyp_shared_intermediate_dir)/content \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/libyuv \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/expat/files/lib


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
gyp_all_modules: content_content_common_gyp

# Alias gyp target name.
.PHONY: content_common
content_common: content_content_common_gyp

include $(BUILD_STATIC_LIBRARY)
