# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := ui_strings_grd
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
LOCAL_SDK_VERSION := 21
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=

### Rules for action "generate_localized_strings_xml":
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: gyp_local_path := $(LOCAL_PATH)
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml: $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_am.xtb $(LOCAL_PATH)/ui/android/java/strings/android_ui_strings.grd $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ar.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_bg.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ca.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_cs.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_da.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_de.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_el.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_en-GB.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_es-419.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_es.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_fa.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_fi.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_fil.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_fr.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_hi.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_hr.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_hu.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_id.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_it.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_iw.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ja.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ko.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_lt.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_lv.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_nl.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_no.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_pl.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_pt-BR.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_pt-PT.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ro.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_ru.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_sk.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_sl.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_sr.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_sv.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_sw.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_th.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_tr.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_uk.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_vi.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_zh-CN.xtb $(LOCAL_PATH)/ui/android/java/strings/translations/android_ui_strings_zh-TW.xtb $(LOCAL_PATH)/tools/grit/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit.py $(LOCAL_PATH)/tools/grit/grit/__init__.py $(LOCAL_PATH)/tools/grit/grit/clique.py $(LOCAL_PATH)/tools/grit/grit/constants.py $(LOCAL_PATH)/tools/grit/grit/exception.py $(LOCAL_PATH)/tools/grit/grit/extern/BogoFP.py $(LOCAL_PATH)/tools/grit/grit/extern/FP.py $(LOCAL_PATH)/tools/grit/grit/extern/__init__.py $(LOCAL_PATH)/tools/grit/grit/extern/tclib.py $(LOCAL_PATH)/tools/grit/grit/format/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/android_xml.py $(LOCAL_PATH)/tools/grit/grit/format/c_format.py $(LOCAL_PATH)/tools/grit/grit/format/chrome_messages_json.py $(LOCAL_PATH)/tools/grit/grit/format/data_pack.py $(LOCAL_PATH)/tools/grit/grit/format/html_inline.py $(LOCAL_PATH)/tools/grit/grit/format/js_map_format.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/PRESUBMIT.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/policy_template_generator.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/template_formatter.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writer_configuration.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/__init__.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adm_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/adml_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/admx_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/doc_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/ios_plist_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/json_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/mock_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_helper.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_strings_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/plist_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/reg_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/template_writer.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/writer_unittest_common.py $(LOCAL_PATH)/tools/grit/grit/format/policy_templates/writers/xml_formatted_writer.py $(LOCAL_PATH)/tools/grit/grit/format/rc.py $(LOCAL_PATH)/tools/grit/grit/format/rc_header.py $(LOCAL_PATH)/tools/grit/grit/format/repack.py $(LOCAL_PATH)/tools/grit/grit/format/resource_map.py $(LOCAL_PATH)/tools/grit/grit/gather/__init__.py $(LOCAL_PATH)/tools/grit/grit/gather/admin_template.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_html.py $(LOCAL_PATH)/tools/grit/grit/gather/chrome_scaled_image.py $(LOCAL_PATH)/tools/grit/grit/gather/igoogle_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/interface.py $(LOCAL_PATH)/tools/grit/grit/gather/json_loader.py $(LOCAL_PATH)/tools/grit/grit/gather/muppet_strings.py $(LOCAL_PATH)/tools/grit/grit/gather/policy_json.py $(LOCAL_PATH)/tools/grit/grit/gather/rc.py $(LOCAL_PATH)/tools/grit/grit/gather/regexp.py $(LOCAL_PATH)/tools/grit/grit/gather/skeleton_gatherer.py $(LOCAL_PATH)/tools/grit/grit/gather/tr_html.py $(LOCAL_PATH)/tools/grit/grit/gather/txt.py $(LOCAL_PATH)/tools/grit/grit/grd_reader.py $(LOCAL_PATH)/tools/grit/grit/grit_runner.py $(LOCAL_PATH)/tools/grit/grit/lazy_re.py $(LOCAL_PATH)/tools/grit/grit/node/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/base.py $(LOCAL_PATH)/tools/grit/grit/node/custom/__init__.py $(LOCAL_PATH)/tools/grit/grit/node/custom/filename.py $(LOCAL_PATH)/tools/grit/grit/node/empty.py $(LOCAL_PATH)/tools/grit/grit/node/include.py $(LOCAL_PATH)/tools/grit/grit/node/io.py $(LOCAL_PATH)/tools/grit/grit/node/mapping.py $(LOCAL_PATH)/tools/grit/grit/node/message.py $(LOCAL_PATH)/tools/grit/grit/node/misc.py $(LOCAL_PATH)/tools/grit/grit/node/structure.py $(LOCAL_PATH)/tools/grit/grit/node/variant.py $(LOCAL_PATH)/tools/grit/grit/pseudo.py $(LOCAL_PATH)/tools/grit/grit/pseudo_rtl.py $(LOCAL_PATH)/tools/grit/grit/scons.py $(LOCAL_PATH)/tools/grit/grit/shortcuts.py $(LOCAL_PATH)/tools/grit/grit/shortcuts_unittests.py $(LOCAL_PATH)/tools/grit/grit/tclib.py $(LOCAL_PATH)/tools/grit/grit/test_suite_all.py $(LOCAL_PATH)/tools/grit/grit/tool/__init__.py $(LOCAL_PATH)/tools/grit/grit/tool/android2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/build.py $(LOCAL_PATH)/tools/grit/grit/tool/buildinfo.py $(LOCAL_PATH)/tools/grit/grit/tool/count.py $(LOCAL_PATH)/tools/grit/grit/tool/diff_structures.py $(LOCAL_PATH)/tools/grit/grit/tool/interface.py $(LOCAL_PATH)/tools/grit/grit/tool/menu_from_parts.py $(LOCAL_PATH)/tools/grit/grit/tool/newgrd.py $(LOCAL_PATH)/tools/grit/grit/tool/postprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/preprocess_interface.py $(LOCAL_PATH)/tools/grit/grit/tool/rc2grd.py $(LOCAL_PATH)/tools/grit/grit/tool/resize.py $(LOCAL_PATH)/tools/grit/grit/tool/test.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_postprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/toolbar_preprocess.py $(LOCAL_PATH)/tools/grit/grit/tool/transl2tc.py $(LOCAL_PATH)/tools/grit/grit/tool/unit.py $(LOCAL_PATH)/tools/grit/grit/tool/xmb.py $(LOCAL_PATH)/tools/grit/grit/util.py $(LOCAL_PATH)/tools/grit/grit/xtb_reader.py $(LOCAL_PATH)/tools/grit/grit_info.py $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating resources from ../../ui/android/java/strings/android_ui_strings.grd ($@)"
	$(hide)cd $(gyp_local_path)/ui/android; mkdir -p $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-el $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ar $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tr $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es-rUS $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-cs $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ko $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rTW $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rCN $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-th $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tl $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-it $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ca $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-vi $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fa $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sv $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fi $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-da $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-de $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fr $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-in $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ru $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-en-rGB $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-iw $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rBR $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sk $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-bg $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lv $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ja $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lt $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hi $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sw $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nb $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sl $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rPT $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ro $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-uk $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sr $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hu $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hr $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nl $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pl; python ../../tools/grit/grit.py -i ../../ui/android/java/strings/android_ui_strings.grd build -f "" -o "$(gyp_intermediate_dir)/ui_strings_grd/res_grit" -D _chromium -E "CHROMIUM_BUILD=chromium" -t android -E "ANDROID_JAVA_TAGGED_ONLY=true" --no-output-all-resource-defines -D enable_printing -D use_concatenated_impulse_responses -D enable_webrtc -D enable_notifications -E "ANDROID_JAVA_TAGGED_ONLY=false"

$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ar/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-bg/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ca/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-cs/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-da/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-de/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-el/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-en-rGB/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es-rUS/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fa/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fi/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tl/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fr/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hi/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hr/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hu/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-in/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-it/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-iw/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ja/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ko/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lt/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lv/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nl/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nb/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pl/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rBR/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rPT/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ro/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ru/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sk/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sl/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sr/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sv/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sw/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-th/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tr/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-uk/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-vi/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rCN/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;
$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rTW/android_ui_strings.xml: $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml ;

### Rules for action "create_resources_zip":
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip: $(LOCAL_PATH)/build/android/gyp/zip.py $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ar/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-bg/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ca/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-cs/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-da/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-de/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-el/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-en-rGB/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es-rUS/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fa/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fi/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tl/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fr/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hi/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hr/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hu/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-in/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-it/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-iw/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ja/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ko/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lt/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lv/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nl/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nb/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pl/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rBR/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rPT/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ro/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ru/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sk/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sl/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sr/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sv/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sw/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-th/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tr/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-uk/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-vi/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rCN/android_ui_strings.xml $(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rTW/android_ui_strings.xml $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: ui_android_ui_android_gyp_ui_strings_grd_target_create_resources_zip ($@)"
	$(hide)cd $(gyp_local_path)/ui/android; mkdir -p $(gyp_shared_intermediate_dir)/res.java; python ../../build/android/gyp/zip.py --input-dir "$(gyp_intermediate_dir)/ui_strings_grd/res_grit" --output "$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip"



GYP_GENERATED_OUTPUTS := \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-am/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ar/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-bg/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ca/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-cs/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-da/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-de/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-el/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-en-rGB/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-es-rUS/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fa/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fi/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tl/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-fr/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hi/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hr/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-hu/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-in/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-it/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-iw/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ja/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ko/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lt/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-lv/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nl/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-nb/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pl/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rBR/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-pt-rPT/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ro/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-ru/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sk/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sl/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sr/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sv/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-sw/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-th/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-tr/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-uk/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-vi/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rCN/android_ui_strings.xml \
	$(gyp_intermediate_dir)/ui_strings_grd/res_grit/values-zh-rTW/android_ui_strings.xml \
	$(gyp_shared_intermediate_dir)/res.java/ui_strings_grd.zip

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
### Set directly by aosp_build_settings.
LOCAL_CLANG := false
LOCAL_NDK_STL_VARIANT := stlport_static

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: ui_strings_grd

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
