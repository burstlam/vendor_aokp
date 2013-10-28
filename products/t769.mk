# Inherit AOSP device configuration for t769.
$(call inherit-product, device/samsung/t769/full_t769.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/t769

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/du/configs/gsm.mk)


# Setup device specific product configuration.
PRODUCT_NAME := du_t769
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := t769
PRODUCT_MODEL := SGH-T769
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T769 TARGET_DEVICE=SGH-T769 BUILD_FINGERPRINT="samsung/SGH-T769/SGH-T769:4.1.2/JZO54K/UVLH5:user/release-keys" PRIVATE_BUILD_DESC="SGH-T769-user 4.1.2 JZO54K UVLH5 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf
