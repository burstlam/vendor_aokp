# Inherit AOSP device configuration for exhilarate.
$(call inherit-product, device/samsung/exhilarate/full_exhilarate.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/exhilarate

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/du/configs/gsm.mk)


# Setup device specific product configuration.
PRODUCT_NAME := du_exhilarate
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := exhilarate
PRODUCT_MODEL := SGH-I577
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I577 TARGET_DEVICE=SGH-I577 BUILD_FINGERPRINT="samsung/SGH-I577/SGH-I577:4.3/JZO54K/UCLH3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I577-user 4.3 JZO54K UCLH3 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf
