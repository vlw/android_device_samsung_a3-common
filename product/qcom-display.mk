# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    debug.composition.type=c2d \
    debug.sf.gpu_comp_tiling=1 \
    debug.mdpcomp.idletime=600 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    ro.opengles.version=196608

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# AdvancedDisplay
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    memtrack.msm8916 \
    libtinyxml

# Misc. libs
PRODUCT_PACKAGES += \
    libstlport

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni
