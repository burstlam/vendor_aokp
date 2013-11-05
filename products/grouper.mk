# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/du/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := du_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.3/JWR66V/573038:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.3 JWR66V 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip \
    vendor/du/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation-alt.zip \
    vendor/du/hybrid/hybrid_tvdpi.conf:system/etc/beerbong/properties.conf
