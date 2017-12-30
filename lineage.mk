# Device path
DEVICE_PATH := device/Panasonic/P55Novo

# Vendor path
VENDOR_PATH := vendor/Panasonic/P55Novo

# Release name
PRODUCT_RELEASE_NAME := P55Novo

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P55Novo
PRODUCT_NAME := lineage_P55Novo
PRODUCT_BRAND := Panasonic
PRODUCT_MODEL := Panasonic P55 Novo by Shivom Techdroid
PRODUCT_MANUFACTURER := MediaTek
