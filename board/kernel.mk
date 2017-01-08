#TARGET_PREBUILT_KERNEL := device/samsung/a3ltexx/kernel
KERNEL_TOOLCHAIN_PREFIX := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
#TARGET_GCC_VERSION_EXP := 4.8
TARGET_KERNEL_ARCH := arm
#BOARD_DTBTOOL_ARG := -2
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_OFFSET := 0x00008000
#BOARD_RAMDISK_OFFSET := 0x01000000
#BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/a3ltexx/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
