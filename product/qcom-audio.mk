# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    tunnel.audio.encode=false \
    audio.offload.video=true \
    audio.offload.gapless.enabled=true \
    av.streaming.offload.enable=true \
    audio.offload.buffer.size.kb=64 \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    use.voice.path.for.pcm.voip=true \
    ro.dualmic=true \
    ro.config.dualmic=true

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.primary.msm8916 \
	audio.primary.default \
	audio_policy.msm8916 \
	audio.r_submix.default \
	audio.tms.default \
	audio.usb.default \
	audiod \
	libaudio-resampler \
	libaudioroute \
	libaudioutils \
	libaudiopolicymanager \
	libqcompostprocbundle \
	libqcomvisualizer \
	libqcomvoiceprocessing \
	libqcmediaplayer \
	libtinyalsa \
	libtinycompress \
	tinymix \
	tinyplay \
	tinycap \
	tinypcminfo

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/Tfa9895.cnt:system/etc/Tfa9895.cnt
