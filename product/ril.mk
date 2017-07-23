# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.rat_on=combine \
    ro.telephony.default_network=9 \
    ro.product_ship=true \
    ro.ril.transmitpower=true \
    persist.radio.no_wait_for_card=1 \
    persist.radio.use_se_table_only=1 \
    persist.radio.jbims=1 \
    telephony.lteOnGsmDevice=1 \
    ro.ril.telephony.mqanelements=6 \
    ro.telephony.ril.config=simactivation

# Samsung libril shim library
PRODUCT_PACKAGES += \
    libril_shim
