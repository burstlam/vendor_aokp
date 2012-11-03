# Inherit AOSP device configuration for tass.
$(call inherit-product, device/zte/blade/full_blade.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += device/zte/blade/overlay

# Setup device specific product configuration.
PRODUCT_DEVICE := blade
PRODUCT_NAME := aokp_blade
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := V880 Blade
PRODUCT_MANUFACTURER := zte

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03L/113740:user/release-keys" PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03L 113740 release-keys"

