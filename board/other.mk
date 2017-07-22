TARGET_SKIP_DEFAULT_LOCALE := true
BLOCK_BASED_OTA := false

TARGET_SPECIFIC_HEADER_PATH := device/samsung/a3-common/include 

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Touchscreen
TARGET_TAP_TO_WAKE_NODE := "/sys/class/sec/sec_touchscreen/wake_gesture"

#SU
WITH_SU := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a3ltexx,a3ultexx,a33gxx,a33g,a3lte,a3ulte
