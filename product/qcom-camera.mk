# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Camera
PRODUCT_PACKAGES += \
    Snap \
    libmm-qcamera \
    camera.msm8916

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.tn.disable=1 \
    persist.camera.pip.support=0 \
    persist.camera.hal.debug.mask=0 \
    persist.ts.postmakeup=true \
    persist.ts.rtmakeup=true \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true
