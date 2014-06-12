$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Coolpad/7296/7296-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Coolpad/7296/overlay

LOCAL_PATH := device/Coolpad/7296
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/Coolpad/7296/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/Coolpad/7296/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/Coolpad/7296/recovery/fstab:recovery/root/fstab \
    device/Coolpad/7296/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/Coolpad/7296/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/Coolpad/7296/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/Coolpad/7296/recovery/ueventd.rc:recovery/root/ueventd.rc 

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_7296
PRODUCT_DEVICE := 7296
