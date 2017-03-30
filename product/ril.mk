# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.rat_on=combine \
    ril.subscription.types=NV,RUIM \
    ro.telephony.default_network=9 \
    ro.product_ship=true \
    ro.ril.transmitpower=true \
    persist.radio.add_power_save=1 \
    persist.radio.no_wait_for_card=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.jbims=1 \
    telephony.lteOnGsmDevice=1 \
    ro.ril.telephony.mqanelements=6 \
    ro.telephony.ril.config=simactivation \
    ro.telephony.samsung.realcall=true \
    ro.telephony.ril_class=KlteRIL

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    persist.data.netmgrd.qos.enable=false

#SAMP_SPCM
#PRODUCT_PROPERTY_OVERRIDES += \
#    sys.config.samp_spcm_enable=true \
#    sys.config.spcm_db_enable=true \
#    sys.config.spcm_db_launcher=true \
#    sys.config.spcm_preload_enable=true \
#    sys.config.samp_ppm_enable=false

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
