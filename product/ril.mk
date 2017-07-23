# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.rat_on=combine \
    ro.ril.transmitpower=true \
    persist.radio.no_wait_for_card=1 \
    persist.radio.use_se_table_only=1

# Samsung libril shim library
PRODUCT_PACKAGES += \
    libril_shim
