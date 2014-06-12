USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Coolpad/7296/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6589
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := 跃跃
TARGET_OTA_ASSERT_DEVICE := 跃跃

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/Coolpad/7296/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_INITRC := device/Coolpad/7296/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/Coolpad/7296/recovery/recovery.fstab
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000

BOARD_CUSTOM_BOOTIMG_MK := device/Coolpad/7296/CustomBootimg.mk

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    persist.mtk.aee.aed=on \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4
	
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

