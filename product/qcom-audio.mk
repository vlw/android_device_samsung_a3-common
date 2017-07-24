# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true \
    av.streaming.offload.enable=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    ro.dualmic=true
