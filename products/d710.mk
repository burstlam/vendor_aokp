# Inherit AOSP device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/d710

# Inherit common cdma apns
$(call inherit-product, vendor/du/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)


# Setup device specific product configuration.
PRODUCT_NAME := du_d710
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d710
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.1.2/JZO54K/SPH-D710.GB27:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.1.2 JZO54K SPH-D710.GB27 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
     vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
     vendor/du/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf
