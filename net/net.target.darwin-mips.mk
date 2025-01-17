# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := net_net_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,net_net_derived_sources_gyp,,,$(GYP_VAR_PREFIX))/net_derived_sources.stamp \
	$(call intermediates-dir-for,GYP,net_net_resources_gyp,,,$(GYP_VAR_PREFIX))/net_resources.stamp \
	$(call intermediates-dir-for,GYP,net_net_jni_headers_gyp,,,$(GYP_VAR_PREFIX))/net_jni_headers.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	net/base/address_list.cc \
	net/base/auth.cc \
	net/base/connection_type_histograms.cc \
	net/base/dns_util.cc \
	net/base/escape.cc \
	net/base/hash_value.cc \
	net/base/load_timing_info.cc \
	net/base/host_port_pair.cc \
	net/base/io_buffer.cc \
	net/base/ip_endpoint.cc \
	net/base/net_errors.cc \
	net/base/net_errors_posix.cc \
	net/base/net_log.cc \
	net/base/net_module.cc \
	net/base/net_string_util_icu.cc \
	net/base/net_util.cc \
	net/base/net_util_icu.cc \
	net/base/net_util_posix.cc \
	net/base/openssl_private_key_store_android.cc \
	net/base/registry_controlled_domains/registry_controlled_domain.cc \
	net/base/zap.cc \
	net/cert/asn1_util.cc \
	net/cert/cert_database.cc \
	net/cert/cert_status_flags.cc \
	net/cert/cert_verifier.cc \
	net/cert/cert_verify_result.cc \
	net/cert/crl_set.cc \
	net/cert/ct_verify_result.cc \
	net/cert/pem_tokenizer.cc \
	net/cert/signed_certificate_timestamp.cc \
	net/cert/single_request_cert_verifier.cc \
	net/cert/x509_cert_types.cc \
	net/cert/x509_certificate.cc \
	net/cert/x509_certificate_net_log_param.cc \
	net/cert/x509_certificate_openssl.cc \
	net/cert/x509_util.cc \
	net/cert/x509_util_openssl.cc \
	net/http/http_auth_challenge_tokenizer.cc \
	net/http/http_byte_range.cc \
	net/http/http_log_util.cc \
	net/http/http_request_headers.cc \
	net/http/http_response_headers.cc \
	net/http/http_response_info.cc \
	net/http/http_security_headers.cc \
	net/http/http_util.cc \
	net/http/http_util_icu.cc \
	net/http/http_vary_data.cc \
	net/http/transport_security_state.cc \
	net/socket/client_socket_handle.cc \
	net/socket/client_socket_pool_histograms.cc \
	net/socket/next_proto.cc \
	net/socket/ssl_client_socket.cc \
	net/socket/ssl_client_socket_openssl.cc \
	net/socket/ssl_client_socket_pool.cc \
	net/socket/ssl_session_cache_openssl.cc \
	net/ssl/channel_id_service.cc \
	net/ssl/channel_id_store.cc \
	net/ssl/default_channel_id_store.cc \
	net/ssl/openssl_client_key_store.cc \
	net/ssl/openssl_ssl_util.cc \
	net/ssl/signed_certificate_timestamp_and_status.cc \
	net/ssl/ssl_cert_request_info.cc \
	net/ssl/ssl_client_auth_cache.cc \
	net/ssl/ssl_config.cc \
	net/ssl/ssl_config_service.cc \
	net/ssl/ssl_info.cc \
	net/android/cert_verify_result_android.cc \
	net/android/gurl_utils.cc \
	net/android/android_private_key.cc \
	net/android/keystore.cc \
	net/android/keystore_openssl.cc \
	net/android/net_jni_registrar.cc \
	net/android/network_change_notifier_android.cc \
	net/android/network_change_notifier_delegate_android.cc \
	net/android/network_change_notifier_factory_android.cc \
	net/android/network_library.cc \
	net/base/address_tracker_linux.cc \
	net/base/backoff_entry.cc \
	net/base/bandwidth_metrics.cc \
	net/base/chunked_upload_data_stream.cc \
	net/base/crypto_module_openssl.cc \
	net/base/data_url.cc \
	net/base/directory_lister.cc \
	net/base/dns_reloader.cc \
	net/base/elements_upload_data_stream.cc \
	net/base/file_stream.cc \
	net/base/file_stream_context.cc \
	net/base/file_stream_context_posix.cc \
	net/base/filename_util.cc \
	net/base/filename_util_icu.cc \
	net/base/filename_util_internal.cc \
	net/base/filename_util_unsafe.cc \
	net/base/host_mapping_rules.cc \
	net/base/int128.cc \
	net/base/ip_pattern.cc \
	net/base/keygen_handler.cc \
	net/base/keygen_handler_openssl.cc \
	net/base/mime_sniffer.cc \
	net/base/mime_util.cc \
	net/base/net_log_logger.cc \
	net/base/net_log_util.cc \
	net/base/network_change_notifier.cc \
	net/base/network_delegate.cc \
	net/base/platform_mime_util_linux.cc \
	net/base/prioritized_dispatcher.cc \
	net/base/request_priority.cc \
	net/base/sdch_manager.cc \
	net/base/sdch_observer.cc \
	net/base/static_cookie_policy.cc \
	net/base/test_data_stream.cc \
	net/base/trace_net_log_observer.cc \
	net/base/upload_bytes_element_reader.cc \
	net/base/upload_data_stream.cc \
	net/base/upload_element_reader.cc \
	net/base/upload_file_element_reader.cc \
	net/base/url_util.cc \
	net/cert/cert_database_android.cc \
	net/cert/cert_verify_proc.cc \
	net/cert/cert_verify_proc_android.cc \
	net/cert/crl_set_storage.cc \
	net/cert/ct_known_logs.cc \
	net/cert/ct_log_response_parser.cc \
	net/cert/ct_log_verifier.cc \
	net/cert/ct_log_verifier_openssl.cc \
	net/cert/ct_objects_extractor_openssl.cc \
	net/cert/ct_serialization.cc \
	net/cert/ct_signed_certificate_timestamp_log_param.cc \
	net/cert/ev_root_ca_metadata.cc \
	net/cert/jwk_serializer_openssl.cc \
	net/cert/multi_log_ct_verifier.cc \
	net/cert/multi_threaded_cert_verifier.cc \
	net/cert/test_root_certs.cc \
	net/cert/test_root_certs_android.cc \
	net/cert/x509_util_android.cc \
	net/cookies/canonical_cookie.cc \
	net/cookies/cookie_constants.cc \
	net/cookies/cookie_monster.cc \
	net/cookies/cookie_store.cc \
	net/cookies/cookie_util.cc \
	net/cookies/parsed_cookie.cc \
	net/disk_cache/blockfile/addr.cc \
	net/disk_cache/blockfile/backend_impl.cc \
	net/disk_cache/blockfile/backend_impl_v3.cc \
	net/disk_cache/blockfile/backend_worker_v3.cc \
	net/disk_cache/blockfile/bitmap.cc \
	net/disk_cache/blockfile/block_bitmaps_v3.cc \
	net/disk_cache/blockfile/block_files.cc \
	net/disk_cache/blockfile/disk_format.cc \
	net/disk_cache/blockfile/entry_impl.cc \
	net/disk_cache/blockfile/entry_impl_v3.cc \
	net/disk_cache/blockfile/eviction.cc \
	net/disk_cache/blockfile/eviction_v3.cc \
	net/disk_cache/blockfile/file.cc \
	net/disk_cache/blockfile/file_lock.cc \
	net/disk_cache/blockfile/file_posix.cc \
	net/disk_cache/blockfile/in_flight_backend_io.cc \
	net/disk_cache/blockfile/in_flight_io.cc \
	net/disk_cache/blockfile/index_table_v3.cc \
	net/disk_cache/blockfile/mapped_file.cc \
	net/disk_cache/blockfile/mapped_file_avoid_mmap_posix.cc \
	net/disk_cache/blockfile/rankings.cc \
	net/disk_cache/blockfile/sparse_control.cc \
	net/disk_cache/blockfile/stats.cc \
	net/disk_cache/blockfile/trace.cc \
	net/disk_cache/blockfile/webfonts_histogram.cc \
	net/disk_cache/cache_creator.cc \
	net/disk_cache/cache_util.cc \
	net/disk_cache/cache_util_posix.cc \
	net/disk_cache/memory/mem_backend_impl.cc \
	net/disk_cache/memory/mem_entry_impl.cc \
	net/disk_cache/memory/mem_rankings.cc \
	net/disk_cache/net_log_parameters.cc \
	net/disk_cache/simple/simple_backend_impl.cc \
	net/disk_cache/simple/simple_entry_format.cc \
	net/disk_cache/simple/simple_entry_impl.cc \
	net/disk_cache/simple/simple_entry_operation.cc \
	net/disk_cache/simple/simple_index.cc \
	net/disk_cache/simple/simple_index_file.cc \
	net/disk_cache/simple/simple_index_file_posix.cc \
	net/disk_cache/simple/simple_net_log_parameters.cc \
	net/disk_cache/simple/simple_synchronous_entry.cc \
	net/disk_cache/simple/simple_util.cc \
	net/disk_cache/simple/simple_util_posix.cc \
	net/disk_cache/simple/simple_version_upgrade.cc \
	net/dns/address_sorter_posix.cc \
	net/dns/dns_client.cc \
	net/dns/dns_config_service.cc \
	net/dns/dns_config_service_posix.cc \
	net/dns/dns_hosts.cc \
	net/dns/dns_query.cc \
	net/dns/dns_response.cc \
	net/dns/dns_session.cc \
	net/dns/dns_socket_pool.cc \
	net/dns/dns_transaction.cc \
	net/dns/host_cache.cc \
	net/dns/host_resolver.cc \
	net/dns/host_resolver_impl.cc \
	net/dns/host_resolver_proc.cc \
	net/dns/mapped_host_resolver.cc \
	net/dns/serial_worker.cc \
	net/dns/single_request_host_resolver.cc \
	net/filter/filter.cc \
	net/filter/gzip_filter.cc \
	net/filter/gzip_header.cc \
	net/filter/sdch_filter.cc \
	net/ftp/ftp_auth_cache.cc \
	net/ftp/ftp_ctrl_response_buffer.cc \
	net/ftp/ftp_directory_listing_parser.cc \
	net/ftp/ftp_directory_listing_parser_ls.cc \
	net/ftp/ftp_directory_listing_parser_netware.cc \
	net/ftp/ftp_directory_listing_parser_os2.cc \
	net/ftp/ftp_directory_listing_parser_vms.cc \
	net/ftp/ftp_directory_listing_parser_windows.cc \
	net/ftp/ftp_network_layer.cc \
	net/ftp/ftp_network_session.cc \
	net/ftp/ftp_network_transaction.cc \
	net/ftp/ftp_response_info.cc \
	net/ftp/ftp_server_type_histograms.cc \
	net/ftp/ftp_util.cc \
	net/http/des.cc \
	net/http/disk_based_cert_cache.cc \
	net/http/disk_cache_based_quic_server_info.cc \
	net/http/failing_http_transaction_factory.cc \
	net/http/http_auth.cc \
	net/http/http_auth_cache.cc \
	net/http/http_auth_controller.cc \
	net/http/http_auth_filter.cc \
	net/http/http_auth_handler.cc \
	net/http/http_auth_handler_basic.cc \
	net/http/http_auth_handler_digest.cc \
	net/http/http_auth_handler_factory.cc \
	net/http/http_auth_handler_ntlm.cc \
	net/http/http_auth_handler_ntlm_portable.cc \
	net/http/http_basic_state.cc \
	net/http/http_basic_stream.cc \
	net/http/http_cache.cc \
	net/http/http_cache_transaction.cc \
	net/http/http_chunked_decoder.cc \
	net/http/http_content_disposition.cc \
	net/http/http_network_layer.cc \
	net/http/http_network_session.cc \
	net/http/http_network_session_peer.cc \
	net/http/http_network_transaction.cc \
	net/http/http_proxy_client_socket.cc \
	net/http/http_proxy_client_socket_pool.cc \
	net/http/http_request_info.cc \
	net/http/http_response_body_drainer.cc \
	net/http/http_server_properties.cc \
	net/http/http_server_properties_impl.cc \
	net/http/http_server_properties_manager.cc \
	net/http/http_status_code.cc \
	net/http/http_stream_factory.cc \
	net/http/http_stream_factory_impl.cc \
	net/http/http_stream_factory_impl_job.cc \
	net/http/http_stream_factory_impl_request.cc \
	net/http/http_stream_parser.cc \
	net/http/md4.cc \
	net/http/partial_data.cc \
	net/http/proxy_client_socket.cc \
	net/http/proxy_connect_redirect_http_stream.cc \
	net/http/transport_security_persister.cc \
	net/http/url_security_manager.cc \
	net/http/url_security_manager_posix.cc \
	net/proxy/dhcp_proxy_script_fetcher.cc \
	net/proxy/dhcp_proxy_script_fetcher_factory.cc \
	net/proxy/multi_threaded_proxy_resolver.cc \
	net/proxy/network_delegate_error_observer.cc \
	net/proxy/polling_proxy_config_service.cc \
	net/proxy/proxy_bypass_rules.cc \
	net/proxy/proxy_config.cc \
	net/proxy/proxy_config_service_android.cc \
	net/proxy/proxy_config_service_fixed.cc \
	net/proxy/proxy_config_source.cc \
	net/proxy/proxy_info.cc \
	net/proxy/proxy_list.cc \
	net/proxy/proxy_resolver_script_data.cc \
	net/proxy/proxy_script_decider.cc \
	net/proxy/proxy_script_fetcher_impl.cc \
	net/proxy/proxy_server.cc \
	net/proxy/proxy_service.cc \
	net/quic/congestion_control/cube_root.cc \
	net/quic/congestion_control/cubic.cc \
	net/quic/congestion_control/hybrid_slow_start.cc \
	net/quic/congestion_control/leaky_bucket.cc \
	net/quic/congestion_control/loss_detection_interface.cc \
	net/quic/congestion_control/pacing_sender.cc \
	net/quic/congestion_control/prr_sender.cc \
	net/quic/congestion_control/receive_algorithm_interface.cc \
	net/quic/congestion_control/rtt_stats.cc \
	net/quic/congestion_control/send_algorithm_interface.cc \
	net/quic/congestion_control/tcp_cubic_sender.cc \
	net/quic/congestion_control/tcp_loss_algorithm.cc \
	net/quic/congestion_control/tcp_receiver.cc \
	net/quic/congestion_control/time_loss_algorithm.cc \
	net/quic/crypto/aead_base_decrypter_openssl.cc \
	net/quic/crypto/aead_base_encrypter_openssl.cc \
	net/quic/crypto/aes_128_gcm_12_decrypter_openssl.cc \
	net/quic/crypto/aes_128_gcm_12_encrypter_openssl.cc \
	net/quic/crypto/cert_compressor.cc \
	net/quic/crypto/chacha20_poly1305_decrypter_openssl.cc \
	net/quic/crypto/chacha20_poly1305_encrypter_openssl.cc \
	net/quic/crypto/channel_id.cc \
	net/quic/crypto/channel_id_chromium.cc \
	net/quic/crypto/channel_id_openssl.cc \
	net/quic/crypto/common_cert_set.cc \
	net/quic/crypto/crypto_framer.cc \
	net/quic/crypto/crypto_handshake.cc \
	net/quic/crypto/crypto_handshake_message.cc \
	net/quic/crypto/crypto_secret_boxer.cc \
	net/quic/crypto/crypto_server_config_protobuf.cc \
	net/quic/crypto/crypto_utils.cc \
	net/quic/crypto/curve25519_key_exchange.cc \
	net/quic/crypto/local_strike_register_client.cc \
	net/quic/crypto/null_decrypter.cc \
	net/quic/crypto/null_encrypter.cc \
	net/quic/crypto/p256_key_exchange_openssl.cc \
	net/quic/crypto/proof_source_chromium.cc \
	net/quic/crypto/proof_verifier_chromium.cc \
	net/quic/crypto/quic_crypto_client_config.cc \
	net/quic/crypto/quic_crypto_server_config.cc \
	net/quic/crypto/quic_decrypter.cc \
	net/quic/crypto/quic_encrypter.cc \
	net/quic/crypto/quic_random.cc \
	net/quic/crypto/quic_server_info.cc \
	net/quic/crypto/scoped_evp_aead_ctx.cc \
	net/quic/crypto/source_address_token.cc \
	net/quic/crypto/strike_register.cc \
	net/quic/iovector.cc \
	net/quic/port_suggester.cc \
	net/quic/quic_ack_notifier.cc \
	net/quic/quic_ack_notifier_manager.cc \
	net/quic/quic_address_mismatch.cc \
	net/quic/quic_alarm.cc \
	net/quic/quic_bandwidth.cc \
	net/quic/quic_client_session.cc \
	net/quic/quic_client_session_base.cc \
	net/quic/quic_clock.cc \
	net/quic/quic_config.cc \
	net/quic/quic_connection.cc \
	net/quic/quic_connection_helper.cc \
	net/quic/quic_connection_logger.cc \
	net/quic/quic_connection_stats.cc \
	net/quic/quic_crypto_client_stream.cc \
	net/quic/quic_crypto_server_stream.cc \
	net/quic/quic_crypto_stream.cc \
	net/quic/quic_data_reader.cc \
	net/quic/quic_data_stream.cc \
	net/quic/quic_data_writer.cc \
	net/quic/quic_default_packet_writer.cc \
	net/quic/quic_fec_group.cc \
	net/quic/quic_flags.cc \
	net/quic/quic_flow_controller.cc \
	net/quic/quic_framer.cc \
	net/quic/quic_headers_stream.cc \
	net/quic/quic_http_stream.cc \
	net/quic/quic_http_utils.cc \
	net/quic/quic_packet_creator.cc \
	net/quic/quic_packet_generator.cc \
	net/quic/quic_protocol.cc \
	net/quic/quic_received_packet_manager.cc \
	net/quic/quic_reliable_client_stream.cc \
	net/quic/quic_sent_entropy_manager.cc \
	net/quic/quic_sent_packet_manager.cc \
	net/quic/quic_server_id.cc \
	net/quic/quic_session.cc \
	net/quic/quic_socket_address_coder.cc \
	net/quic/quic_stream_factory.cc \
	net/quic/quic_stream_sequencer.cc \
	net/quic/quic_sustained_bandwidth_recorder.cc \
	net/quic/quic_time.cc \
	net/quic/quic_types.cc \
	net/quic/quic_unacked_packet_map.cc \
	net/quic/quic_utils.cc \
	net/quic/quic_write_blocked_list.cc \
	net/quic/reliable_quic_stream.cc \
	net/quic/spdy_utils.cc \
	net/socket/client_socket_factory.cc \
	net/socket/client_socket_pool.cc \
	net/socket/client_socket_pool_base.cc \
	net/socket/client_socket_pool_manager.cc \
	net/socket/client_socket_pool_manager_impl.cc \
	net/socket/server_socket.cc \
	net/socket/socket_descriptor.cc \
	net/socket/socket_libevent.cc \
	net/socket/socket_net_log_params.cc \
	net/socket/socks5_client_socket.cc \
	net/socket/socks_client_socket.cc \
	net/socket/socks_client_socket_pool.cc \
	net/socket/ssl_server_socket_openssl.cc \
	net/socket/stream_listen_socket.cc \
	net/socket/stream_socket.cc \
	net/socket/tcp_client_socket.cc \
	net/socket/tcp_listen_socket.cc \
	net/socket/tcp_server_socket.cc \
	net/socket/tcp_socket_libevent.cc \
	net/socket/transport_client_socket_pool.cc \
	net/socket/unix_domain_client_socket_posix.cc \
	net/socket/unix_domain_listen_socket_posix.cc \
	net/socket/unix_domain_server_socket_posix.cc \
	net/socket/websocket_endpoint_lock_manager.cc \
	net/socket/websocket_transport_client_socket_pool.cc \
	net/socket/websocket_transport_connect_sub_job.cc \
	net/socket_stream/socket_stream.cc \
	net/socket_stream/socket_stream_job.cc \
	net/socket_stream/socket_stream_job_manager.cc \
	net/socket_stream/socket_stream_metrics.cc \
	net/spdy/buffered_spdy_framer.cc \
	net/spdy/fuzzing/hpack_fuzz_util.cc \
	net/spdy/hpack_constants.cc \
	net/spdy/hpack_decoder.cc \
	net/spdy/hpack_encoder.cc \
	net/spdy/hpack_entry.cc \
	net/spdy/hpack_header_table.cc \
	net/spdy/hpack_huffman_aggregator.cc \
	net/spdy/hpack_huffman_table.cc \
	net/spdy/hpack_input_stream.cc \
	net/spdy/hpack_output_stream.cc \
	net/spdy/hpack_static_table.cc \
	net/spdy/hpack_string_util.cc \
	net/spdy/spdy_buffer.cc \
	net/spdy/spdy_buffer_producer.cc \
	net/spdy/spdy_frame_builder.cc \
	net/spdy/spdy_frame_reader.cc \
	net/spdy/spdy_framer.cc \
	net/spdy/spdy_header_block.cc \
	net/spdy/spdy_headers_block_parser.cc \
	net/spdy/spdy_http_stream.cc \
	net/spdy/spdy_http_utils.cc \
	net/spdy/spdy_pinnable_buffer_piece.cc \
	net/spdy/spdy_prefixed_buffer_reader.cc \
	net/spdy/spdy_protocol.cc \
	net/spdy/spdy_proxy_client_socket.cc \
	net/spdy/spdy_read_queue.cc \
	net/spdy/spdy_session.cc \
	net/spdy/spdy_session_key.cc \
	net/spdy/spdy_session_pool.cc \
	net/spdy/spdy_stream.cc \
	net/spdy/spdy_websocket_stream.cc \
	net/spdy/spdy_write_queue.cc \
	net/ssl/ssl_cipher_suite_names.cc \
	net/ssl/ssl_config_service_defaults.cc \
	net/udp/udp_client_socket.cc \
	net/udp/udp_net_log_parameters.cc \
	net/udp/udp_server_socket.cc \
	net/udp/udp_socket_libevent.cc \
	net/url_request/data_protocol_handler.cc \
	net/url_request/file_protocol_handler.cc \
	net/url_request/ftp_protocol_handler.cc \
	net/url_request/redirect_info.cc \
	net/url_request/sdch_dictionary_fetcher.cc \
	net/url_request/static_http_user_agent_settings.cc \
	net/url_request/url_fetcher.cc \
	net/url_request/url_fetcher_core.cc \
	net/url_request/url_fetcher_delegate.cc \
	net/url_request/url_fetcher_impl.cc \
	net/url_request/url_fetcher_response_writer.cc \
	net/url_request/url_range_request_job.cc \
	net/url_request/url_request.cc \
	net/url_request/url_request_about_job.cc \
	net/url_request/url_request_context.cc \
	net/url_request/url_request_context_builder.cc \
	net/url_request/url_request_context_getter.cc \
	net/url_request/url_request_context_storage.cc \
	net/url_request/url_request_data_job.cc \
	net/url_request/url_request_error_job.cc \
	net/url_request/url_request_file_dir_job.cc \
	net/url_request/url_request_file_job.cc \
	net/url_request/url_request_filter.cc \
	net/url_request/url_request_ftp_job.cc \
	net/url_request/url_request_http_job.cc \
	net/url_request/url_request_intercepting_job_factory.cc \
	net/url_request/url_request_interceptor.cc \
	net/url_request/url_request_job.cc \
	net/url_request/url_request_job_factory.cc \
	net/url_request/url_request_job_factory_impl.cc \
	net/url_request/url_request_job_manager.cc \
	net/url_request/url_request_netlog_params.cc \
	net/url_request/url_request_redirect_job.cc \
	net/url_request/url_request_simple_job.cc \
	net/url_request/url_request_test_job.cc \
	net/url_request/url_request_throttler_entry.cc \
	net/url_request/url_request_throttler_header_adapter.cc \
	net/url_request/url_request_throttler_manager.cc \
	net/url_request/view_cache_helper.cc \
	net/url_request/websocket_handshake_userdata_key.cc \
	net/websockets/websocket_basic_handshake_stream.cc \
	net/websockets/websocket_basic_stream.cc \
	net/websockets/websocket_channel.cc \
	net/websockets/websocket_deflate_predictor_impl.cc \
	net/websockets/websocket_deflate_stream.cc \
	net/websockets/websocket_deflater.cc \
	net/websockets/websocket_errors.cc \
	net/websockets/websocket_extension.cc \
	net/websockets/websocket_extension_parser.cc \
	net/websockets/websocket_frame.cc \
	net/websockets/websocket_frame_parser.cc \
	net/websockets/websocket_handshake_constants.cc \
	net/websockets/websocket_handshake_handler.cc \
	net/websockets/websocket_handshake_request_info.cc \
	net/websockets/websocket_handshake_response_info.cc \
	net/websockets/websocket_handshake_stream_create_helper.cc \
	net/websockets/websocket_inflater.cc \
	net/websockets/websocket_job.cc \
	net/websockets/websocket_net_log_params.cc \
	net/websockets/websocket_stream.cc \
	net/websockets/websocket_throttle.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
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
	-fstack-protector \
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
	'-DNET_IMPLEMENTATION' \
	'-DPOSIX_AVOID_MMAP' \
	'-DENABLE_BUILT_IN_DNS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
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
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/sdch/open-vcdiff/src \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/boringssl/src/include \
	$(gyp_shared_intermediate_dir)/net


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-uninitialized \
	-std=gnu++11 \
	-Wno-narrowing \
	-Wno-literal-suffix \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	 \
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
	-fstack-protector \
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
	'-DNET_IMPLEMENTATION' \
	'-DPOSIX_AVOID_MMAP' \
	'-DENABLE_BUILT_IN_DNS' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION' \
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
	$(gyp_shared_intermediate_dir) \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/sdch/open-vcdiff/src \
	$(LOCAL_PATH)/third_party/icu/source/i18n \
	$(LOCAL_PATH)/third_party/icu/source/common \
	$(LOCAL_PATH)/third_party/zlib \
	$(LOCAL_PATH)/third_party/boringssl/src/include \
	$(gyp_shared_intermediate_dir)/net


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-uninitialized \
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
gyp_all_modules: net_net_gyp

# Alias gyp target name.
.PHONY: net
net: net_net_gyp

include $(BUILD_STATIC_LIBRARY)
