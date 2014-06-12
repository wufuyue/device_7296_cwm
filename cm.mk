## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 和纬科技

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Coolpad/7296/device_7296.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 7296
PRODUCT_NAME := cm_7296
PRODUCT_BRAND := Coolpad
PRODUCT_MODEL := 7296
PRODUCT_MANUFACTURER := Coolpad
