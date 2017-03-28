# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libpath2=/system/lib/libsec-ril-dsds.so \
    ro.telephony.default_network=9 \
    keyguard.no_require_sim=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.rat_on=combine \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1 \
    persist.radio.lte_vrte_ltd=1 \
    persist.radio.add_power_save=1 \
    persist.radio.override_psvoice=true \
    ro.telephony.samsung.realcall=true \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.ril_class=SerranoRIL

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    persist.data.netmgrd.qos.enable=false

#SAMP_SPCM
PRODUCT_PROPERTY_OVERRIDES += \
    sys.config.samp_spcm_enable=true \
    sys.config.spcm_db_enable=true \
    sys.config.spcm_db_launcher=true \
    sys.config.spcm_preload_enable=true \
    sys.config.samp_ppm_enable=false

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=0 \
    persist.cne.dpm=0 \
    persist.dpm.feature=0

# Samsung libril shim library
PRODUCT_PACKAGES += \
    libril_shim

# Samsung rild
#PRODUCT_PACKAGES += \
#    rild
