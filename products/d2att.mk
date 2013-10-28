# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/du/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/d2

# Setup device specific product configuration.
PRODUCT_NAME := du_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2uc \
    TARGET_DEVICE=d2att \
    BUILD_FINGERPRINT="samsung/d2uc/d2att:4.1.2/JZO54K/I747UCDMG2:user/release-keys" \
    PRIVATE_BUILD_DESC="d2uc-user 4.1.2 JZO54K I747UCDMG2 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_d2.conf:system/etc/beerbong/properties.conf
