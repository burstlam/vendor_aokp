# Inherit AOSP device configuration for tass.
$(call inherit-product, device/zte/blade/full_blade.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# overlay
PRODUCT_PACKAGE_OVERLAYS += device/zte/blade/overlay

# Setup device specific product configuration.
PRODUCT_DEVICE := blade
PRODUCT_NAME := aokp_blade
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := V880 Blade
PRODUCT_MANUFACTURER := zte

# Hybrid Config
PRODUCT_COPY_FILES += \
    vendor/aokp/hybrid/hybrid_hdpi.conf:system/etc/burstlam/properties.conf

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=blade BUILD_ID=JRO03C BUILD_FINGERPRINT=ZTE/N880E_JB4_2/atlas40:4.2/JOP40C/20121121.110335:user/release-keys PRIVATE_BUILD_DESC="N880E_JB4_2-user 4.2 JOP40C 20121121.110335 release-keys" BUILD_NUMBER=20121121.110335


