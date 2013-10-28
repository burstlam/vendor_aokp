# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/d2

# Inherit common cdma apns
$(call inherit-product, vendor/du/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/d2

# Setup device specific product configuration.
PRODUCT_NAME := du_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2spr \
    TARGET_DEVICE=d2spr \
    BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.1.2/JZO54K/L710VPBMD4:user/release-keys" \
    PRIVATE_BUILD_DESC="d2spr-user 4.1.2 JZO54K L710VPBMD4 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip \
    vendor/du/hybrid/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf
