## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ace

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ace/device_ace.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ace
PRODUCT_NAME := cm_ace
PRODUCT_BRAND := htc
PRODUCT_MODEL := ace
PRODUCT_MANUFACTURER := htc
