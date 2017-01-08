# Storage
TARGET_RECOVERY_FSTAB := device/samsung/a3-common/rootdir/etc/fstab.qcom
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := /dev/mtp_usb
RECOVERY_SDCARD_ON_DATA := true

# Misc.
BOARD_RECOVERY_SWIPE := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INCLUDE_CRYPTO := true
HAVE_SELINUX := true
TWHAVE_SELINUX := true
TW_EXCLUDE_SUPERSU := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Keys
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/a3-common/recovery/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true

# Display
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
