ifneq ($(TARGET_DEVICE),a33g)

# Property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# NFC packages
PRODUCT_PACKAGES += \
    libnfc_nci \
	libnfc_nci_jni \
	libpn547_fw \
    NfcNci \
    Tag \
	com.android.nfc.helper \
    com.android.nfc_extras

# NFC configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

endif
