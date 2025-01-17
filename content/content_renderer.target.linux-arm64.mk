# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := content_content_renderer_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,content_content_resources_gyp,,,$(GYP_VAR_PREFIX))/content_resources.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,content_content_common_mojo_bindings_gyp,,,$(GYP_VAR_PREFIX))/content_content_common_mojo_bindings_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,device_battery_device_battery_mojo_bindings_gyp,,,$(GYP_VAR_PREFIX))/device_battery_device_battery_mojo_bindings_gyp.a \
	$(call intermediates-dir-for,GYP,gpu_gpu_gyp,,,$(GYP_VAR_PREFIX))/gpu.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,mojo_public_mojo_application_bindings_gyp,,,$(GYP_VAR_PREFIX))/mojo_public_mojo_application_bindings_gyp.a \
	$(call intermediates-dir-for,GYP,skia_skia_gyp,,,$(GYP_VAR_PREFIX))/skia.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_library_gyp,,,$(GYP_VAR_PREFIX))/skia_skia_library_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_WebKit_public_blink_gyp,,,$(GYP_VAR_PREFIX))/blink.stamp \
	$(call intermediates-dir-for,GYP,third_party_npapi_npapi_gyp,,,$(GYP_VAR_PREFIX))/npapi.stamp \
	$(call intermediates-dir-for,GYP,third_party_widevine_cdm_widevine_cdm_version_h_gyp,,,$(GYP_VAR_PREFIX))/widevine_cdm_version_h.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_accessibility_accessibility_gyp,,,$(GYP_VAR_PREFIX))/ui_accessibility_accessibility_gyp.a \
	$(call intermediates-dir-for,STATIC_LIBRARIES,ui_accessibility_ax_gen_gyp,,,$(GYP_VAR_PREFIX))/ui_accessibility_ax_gen_gyp.a \
	$(call intermediates-dir-for,GYP,v8_tools_gyp_v8_gyp,,,$(GYP_VAR_PREFIX))/v8.stamp \
	$(call intermediates-dir-for,STATIC_LIBRARIES,third_party_libphonenumber_libphonenumber_without_metadata_gyp,,,$(GYP_VAR_PREFIX))/third_party_libphonenumber_libphonenumber_without_metadata_gyp.a

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	content/public/renderer/android_content_detection_prefixes.cc \
	content/public/renderer/content_renderer_client.cc \
	content/public/renderer/document_state.cc \
	content/public/renderer/navigation_state.cc \
	content/public/renderer/render_frame_observer.cc \
	content/public/renderer/render_process_observer.cc \
	content/public/renderer/render_thread.cc \
	content/public/renderer/render_view_observer.cc \
	content/public/renderer/video_encode_accelerator.cc \
	content/renderer/accessibility/blink_ax_enum_conversion.cc \
	content/renderer/accessibility/blink_ax_tree_source.cc \
	content/renderer/accessibility/renderer_accessibility.cc \
	content/renderer/active_notification_tracker.cc \
	content/renderer/android/address_detector.cc \
	content/renderer/android/content_detector.cc \
	content/renderer/android/email_detector.cc \
	content/renderer/android/phone_number_detector.cc \
	content/renderer/android/renderer_date_time_picker.cc \
	content/renderer/android/synchronous_compositor_factory.cc \
	content/renderer/battery_status/battery_status_dispatcher.cc \
	content/renderer/browser_plugin/browser_plugin.cc \
	content/renderer/browser_plugin/browser_plugin_manager.cc \
	content/renderer/clipboard_utils.cc \
	content/renderer/child_frame_compositing_helper.cc \
	content/renderer/chrome_object_extensions_utils.cc \
	content/renderer/context_menu_params_builder.cc \
	content/renderer/cursor_utils.cc \
	content/renderer/date_time_suggestion_builder.cc \
	content/renderer/device_sensors/device_light_event_pump.cc \
	content/renderer/device_sensors/device_motion_event_pump.cc \
	content/renderer/device_sensors/device_orientation_event_pump.cc \
	content/renderer/devtools/devtools_agent.cc \
	content/renderer/devtools/devtools_agent_filter.cc \
	content/renderer/devtools/devtools_client.cc \
	content/renderer/disambiguation_popup_helper.cc \
	content/renderer/dom_automation_controller.cc \
	content/renderer/dom_storage/dom_storage_cached_area.cc \
	content/renderer/dom_storage/dom_storage_dispatcher.cc \
	content/renderer/dom_storage/webstoragearea_impl.cc \
	content/renderer/dom_storage/webstoragenamespace_impl.cc \
	content/renderer/dom_utils.cc \
	content/renderer/drop_data_builder.cc \
	content/renderer/fetchers/image_resource_fetcher.cc \
	content/renderer/fetchers/manifest_fetcher.cc \
	content/renderer/fetchers/multi_resolution_image_resource_fetcher.cc \
	content/renderer/fetchers/resource_fetcher_impl.cc \
	content/renderer/fetchers/web_url_loader_client_impl.cc \
	content/renderer/gamepad_shared_memory_reader.cc \
	content/renderer/geolocation_dispatcher.cc \
	content/renderer/gpu/compositor_output_surface.cc \
	content/renderer/gpu/compositor_software_output_device.cc \
	content/renderer/gpu/delegated_compositor_output_surface.cc \
	content/renderer/gpu/frame_swap_message_queue.cc \
	content/renderer/gpu/gpu_benchmarking_extension.cc \
	content/renderer/gpu/mailbox_output_surface.cc \
	content/renderer/gpu/queue_message_swap_promise.cc \
	content/renderer/gpu/render_widget_compositor.cc \
	content/renderer/gpu/stream_texture_host_android.cc \
	content/renderer/history_controller.cc \
	content/renderer/history_entry.cc \
	content/renderer/history_serialization.cc \
	content/renderer/idle_user_detector.cc \
	content/renderer/image_loading_helper.cc \
	content/renderer/ime_event_guard.cc \
	content/renderer/in_process_renderer_thread.cc \
	content/renderer/input/input_event_filter.cc \
	content/renderer/input/input_handler_manager.cc \
	content/renderer/input/input_handler_proxy.cc \
	content/renderer/input/input_handler_wrapper.cc \
	content/renderer/input/input_scroll_elasticity_controller.cc \
	content/renderer/internal_document_state_data.cc \
	content/renderer/java/gin_java_bridge_dispatcher.cc \
	content/renderer/java/gin_java_bridge_object.cc \
	content/renderer/java/gin_java_bridge_value_converter.cc \
	content/renderer/manifest/manifest_manager.cc \
	content/renderer/manifest/manifest_parser.cc \
	content/renderer/manifest/manifest_uma_util.cc \
	content/renderer/media/aec_dump_message_filter.cc \
	content/renderer/media/android/audio_decoder_android.cc \
	content/renderer/media/android/media_info_loader.cc \
	content/renderer/media/android/media_source_delegate.cc \
	content/renderer/media/android/renderer_demuxer_android.cc \
	content/renderer/media/android/renderer_media_player_manager.cc \
	content/renderer/media/android/stream_texture_factory_impl.cc \
	content/renderer/media/android/stream_texture_factory_synchronous_impl.cc \
	content/renderer/media/android/webmediaplayer_android.cc \
	content/renderer/media/audio_device_factory.cc \
	content/renderer/media/audio_input_message_filter.cc \
	content/renderer/media/audio_message_filter.cc \
	content/renderer/media/audio_renderer_mixer_manager.cc \
	content/renderer/media/cdm_session_adapter.cc \
	content/renderer/media/crypto/key_systems.cc \
	content/renderer/media/crypto/key_systems_support_uma.cc \
	content/renderer/media/crypto/proxy_decryptor.cc \
	content/renderer/media/crypto/render_cdm_factory.cc \
	content/renderer/media/media_stream_audio_level_calculator.cc \
	content/renderer/media/media_stream_audio_renderer.cc \
	content/renderer/media/media_stream_constraints_util.cc \
	content/renderer/media/media_stream_track.cc \
	content/renderer/media/midi_dispatcher.cc \
	content/renderer/media/midi_message_filter.cc \
	content/renderer/media/render_media_log.cc \
	content/renderer/media/renderer_gpu_video_accelerator_factories.cc \
	content/renderer/media/renderer_webaudiodevice_impl.cc \
	content/renderer/media/renderer_webmidiaccessor_impl.cc \
	content/renderer/media/video_capture_impl.cc \
	content/renderer/media/video_capture_impl_manager.cc \
	content/renderer/media/video_capture_message_filter.cc \
	content/renderer/media/video_frame_provider.cc \
	content/renderer/media/webcontentdecryptionmodule_impl.cc \
	content/renderer/media/webcontentdecryptionmodulesession_impl.cc \
	content/renderer/media/webmediaplayer_ms.cc \
	content/renderer/memory_benchmarking_extension.cc \
	content/renderer/menu_item_builder.cc \
	content/renderer/mhtml_generator.cc \
	content/renderer/mojo/service_registry_js_wrapper.cc \
	content/renderer/mouse_lock_dispatcher.cc \
	content/renderer/net_info_helper.cc \
	content/renderer/notification_icon_loader.cc \
	content/renderer/notification_permission_dispatcher.cc \
	content/renderer/notification_provider.cc \
	content/renderer/push_messaging_dispatcher.cc \
	content/renderer/push_permission_dispatcher.cc \
	content/renderer/render_frame_impl.cc \
	content/renderer/render_frame_proxy.cc \
	content/renderer/render_process_impl.cc \
	content/renderer/render_thread_impl.cc \
	content/renderer/render_view_impl.cc \
	content/renderer/render_view_impl_android.cc \
	content/renderer/render_view_impl_params.cc \
	content/renderer/render_view_linux.cc \
	content/renderer/render_view_mouse_lock_dispatcher.cc \
	content/renderer/render_widget.cc \
	content/renderer/render_widget_fullscreen.cc \
	content/renderer/renderer_blink_platform_impl.cc \
	content/renderer/renderer_clipboard_client.cc \
	content/renderer/renderer_main.cc \
	content/renderer/renderer_main_platform_delegate_android.cc \
	content/renderer/renderer_webapplicationcachehost_impl.cc \
	content/renderer/renderer_webcolorchooser_impl.cc \
	content/renderer/renderer_webcookiejar_impl.cc \
	content/renderer/resizing_mode_selector.cc \
	content/renderer/sad_plugin.cc \
	content/renderer/savable_resources.cc \
	content/renderer/scheduler/null_renderer_scheduler.cc \
	content/renderer/scheduler/renderer_scheduler.cc \
	content/renderer/scheduler/renderer_scheduler_impl.cc \
	content/renderer/scheduler/renderer_task_queue_selector.cc \
	content/renderer/scheduler/single_thread_idle_task_runner.cc \
	content/renderer/scheduler/task_queue_manager.cc \
	content/renderer/scheduler/web_scheduler_impl.cc \
	content/renderer/screen_orientation/screen_orientation_dispatcher.cc \
	content/renderer/screen_orientation/screen_orientation_observer.cc \
	content/renderer/scoped_clipboard_writer_glue.cc \
	content/renderer/service_worker/embedded_worker_context_client.cc \
	content/renderer/service_worker/embedded_worker_context_message_filter.cc \
	content/renderer/service_worker/embedded_worker_devtools_agent.cc \
	content/renderer/service_worker/embedded_worker_dispatcher.cc \
	content/renderer/service_worker/service_worker_cache_storage_dispatcher.cc \
	content/renderer/service_worker/service_worker_script_context.cc \
	content/renderer/shared_memory_seqlock_reader.cc \
	content/renderer/shared_worker_repository.cc \
	content/renderer/shared_worker/embedded_shared_worker_permission_client_proxy.cc \
	content/renderer/shared_worker/embedded_shared_worker_stub.cc \
	content/renderer/skia_benchmarking_extension.cc \
	content/renderer/speech_recognition_dispatcher.cc \
	content/renderer/stats_collection_controller.cc \
	content/renderer/stats_collection_observer.cc \
	content/renderer/text_input_client_observer.cc \
	content/renderer/v8_value_converter_impl.cc \
	content/renderer/web_ui_extension.cc \
	content/renderer/web_ui_extension_data.cc \
	content/renderer/web_ui_mojo.cc \
	content/renderer/web_ui_mojo_context_state.cc \
	content/renderer/web_ui_runner.cc \
	content/renderer/webclipboard_impl.cc \
	content/renderer/webgraphicscontext3d_provider_impl.cc \
	content/renderer/webpublicsuffixlist_impl.cc \
	content/renderer/webscrollbarbehavior_impl_gtkoraura.cc \
	content/renderer/websharedworker_proxy.cc \
	content/renderer/external_popup_menu.cc \
	content/public/renderer/media_stream_audio_sink.cc \
	content/public/renderer/media_stream_video_sink.cc \
	content/renderer/media/media_stream.cc \
	content/renderer/media/media_stream_audio_processor.cc \
	content/renderer/media/media_stream_audio_processor_options.cc \
	content/renderer/media/media_stream_audio_sink_owner.cc \
	content/renderer/media/media_stream_center.cc \
	content/renderer/media/media_stream_dispatcher.cc \
	content/renderer/media/media_stream_audio_source.cc \
	content/renderer/media/media_stream_renderer_factory.cc \
	content/renderer/media/media_stream_source.cc \
	content/renderer/media/media_stream_video_capturer_source.cc \
	content/renderer/media/media_stream_video_source.cc \
	content/renderer/media/media_stream_video_track.cc \
	content/renderer/media/native_handle_impl.cc \
	content/renderer/media/peer_connection_audio_sink_owner.cc \
	content/renderer/media/peer_connection_identity_service.cc \
	content/renderer/media/peer_connection_tracker.cc \
	content/renderer/media/remote_media_stream_impl.cc \
	content/renderer/media/rtc_data_channel_handler.cc \
	content/renderer/media/rtc_dtmf_sender_handler.cc \
	content/renderer/media/rtc_media_constraints.cc \
	content/renderer/media/rtc_peer_connection_handler.cc \
	content/renderer/media/rtc_video_decoder.cc \
	content/renderer/media/rtc_video_decoder_factory.cc \
	content/renderer/media/rtc_video_encoder.cc \
	content/renderer/media/rtc_video_encoder_factory.cc \
	content/renderer/media/rtc_video_renderer.cc \
	content/renderer/media/speech_recognition_audio_sink.cc \
	content/renderer/media/user_media_client_impl.cc \
	content/renderer/media/video_source_handler.cc \
	content/renderer/media/video_track_adapter.cc \
	content/renderer/media/webaudio_capturer_source.cc \
	content/renderer/media/webrtc/webrtc_video_track_adapter.cc \
	content/renderer/media/webrtc/media_stream_remote_video_source.cc \
	content/renderer/media/webrtc/media_stream_track_metrics.cc \
	content/renderer/media/webrtc/peer_connection_dependency_factory.cc \
	content/renderer/media/webrtc/webrtc_audio_sink_adapter.cc \
	content/renderer/media/webrtc/webrtc_local_audio_track_adapter.cc \
	content/renderer/media/webrtc/webrtc_media_stream_adapter.cc \
	content/renderer/media/webrtc/webrtc_video_capturer_adapter.cc \
	content/renderer/media/webrtc_audio_capturer.cc \
	content/renderer/media/webrtc_audio_device_impl.cc \
	content/renderer/media/webrtc_audio_device_not_impl.cc \
	content/renderer/media/webrtc_audio_renderer.cc \
	content/renderer/media/webrtc_identity_service.cc \
	content/renderer/media/webrtc_local_audio_renderer.cc \
	content/renderer/media/webrtc_local_audio_source_provider.cc \
	content/renderer/media/webrtc_local_audio_track.cc \
	content/renderer/media/webrtc_logging.cc \
	content/renderer/media/webrtc_uma_histograms.cc \
	content/renderer/p2p/host_address_request.cc \
	content/renderer/p2p/ipc_network_manager.cc \
	content/renderer/p2p/ipc_socket_factory.cc \
	content/renderer/p2p/port_allocator.cc \
	content/renderer/p2p/socket_client_impl.cc \
	content/renderer/p2p/socket_dispatcher.cc \
	content/renderer/media/crypto/proxy_media_keys.cc \
	content/renderer/media/crypto/renderer_cdm_manager.cc


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
	'-DMOJO_USE_SYSTEM_IMPL' \
	'-DLIBPEERCONNECTION_LIB=1' \
	'-DMEDIA_DISABLE_LIBVPX' \
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
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
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
	'-DI18N_PHONENUMBERS_USE_ICU_REGEXP=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_ANDROID_OPENSLES' \
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
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/WebKit \
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
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/expat/files/lib \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(gyp_shared_intermediate_dir)/protoc_out/third_party/libphonenumber \
	$(LOCAL_PATH)/third_party/libphonenumber/src \
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/libyuv \
	$(LOCAL_PATH)/third_party/webrtc/modules/interface \
	$(LOCAL_PATH)/third_party/webrtc/modules/audio_device/include


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
	'-DMOJO_USE_SYSTEM_IMPL' \
	'-DLIBPEERCONNECTION_LIB=1' \
	'-DMEDIA_DISABLE_LIBVPX' \
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
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DCHROME_PNG_READ_PACK_SUPPORT' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
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
	'-DI18N_PHONENUMBERS_USE_ICU_REGEXP=1' \
	'-DPROTOBUF_USE_DLLS' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DWEBRTC_CHROMIUM_BUILD' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_ANDROID_OPENSLES' \
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
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/WebKit/Source \
	$(LOCAL_PATH)/third_party/khronos \
	$(LOCAL_PATH)/gpu \
	$(LOCAL_PATH)/third_party/WebKit \
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
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/libwebp \
	$(LOCAL_PATH)/third_party/ots/include \
	$(LOCAL_PATH)/third_party/qcms/src \
	$(LOCAL_PATH)/third_party/iccjpeg \
	$(LOCAL_PATH)/third_party/libjpeg_turbo \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/webrtc/overrides \
	$(LOCAL_PATH)/third_party/libjingle/overrides \
	$(LOCAL_PATH)/third_party/libjingle/source \
	$(LOCAL_PATH)/testing/gtest/include \
	$(LOCAL_PATH)/third_party \
	$(LOCAL_PATH)/third_party/expat/files/lib \
	$(LOCAL_PATH)/third_party/npapi \
	$(LOCAL_PATH)/third_party/npapi/bindings \
	$(LOCAL_PATH)/v8/include \
	$(gyp_shared_intermediate_dir)/protoc_out/third_party/libphonenumber \
	$(LOCAL_PATH)/third_party/libphonenumber/src \
	$(gyp_shared_intermediate_dir)/protoc_out \
	$(LOCAL_PATH)/third_party/protobuf \
	$(LOCAL_PATH)/third_party/protobuf/src \
	$(LOCAL_PATH)/third_party/libyuv/include \
	$(LOCAL_PATH)/third_party/libyuv \
	$(LOCAL_PATH)/third_party/webrtc/modules/interface \
	$(LOCAL_PATH)/third_party/webrtc/modules/audio_device/include


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

LOCAL_STATIC_LIBRARIES := \
	cpufeatures

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: content_content_renderer_gyp

# Alias gyp target name.
.PHONY: content_renderer
content_renderer: content_content_renderer_gyp

include $(BUILD_STATIC_LIBRARY)
