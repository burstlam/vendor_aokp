# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2cri/full_d2cri.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/du/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/d2

# Setup device specific product configuration.
PRODUCT_NAME := du_d2cri
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2cri
PRODUCT_MODEL := SCH-R530C
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2cri \
    TARGET_DEVICE=d2cri \
    BUILD_FINGERPRINT="samsung/d2cri/d2cri:4.1.2/JZO54K/R530CVVBMD6:user/release-keys" \
    PRIVATE_BUILD_DESC="d2cri-user 4.1.2 JZO54K R530CVVBMD6 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf
