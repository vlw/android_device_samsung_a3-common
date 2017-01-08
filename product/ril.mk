# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d /dev/smd0 \
    persist.rild.nitz_plmn= \
    persist.rild.nitz_long_ons_0= \
    persist.rild.nitz_long_ons_1= \
    persist.rild.nitz_long_ons_2= \
    persist.rild.nitz_long_ons_3= \
    persist.rild.nitz_short_ons_0= \
    persist.rild.nitz_short_ons_1= \
    persist.rild.nitz_short_ons_2= \
    persist.rild.nitz_short_ons_3= \
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
    ro.telephony.ril_class=SamsungQcom3GDSRIL


# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    persist.data.netmgrd.qos.enable=false

# Samsung libril shim library
PRODUCT_PACKAGES += \
    libril_shim

