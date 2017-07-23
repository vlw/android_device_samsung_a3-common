# OTA scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/releasetools/variant_hook.sh:install/bin/variant_hook.sh \
	$(LOCAL_PATH)/releasetools/installend/copy_nfc_configs.sh:install/bin/installend/copy_nfc_configs.sh \
	$(LOCAL_PATH)/releasetools/installend/copy_variant_blobs.sh:install/bin/installend/copy_variant_blobs.sh \
	$(LOCAL_PATH)/releasetools/installend/update_baseband.sh:install/bin/installend/update_baseband.sh \
	$(LOCAL_PATH)/releasetools/installend/update_device_name.sh:install/bin/installend/update_device_name.sh
