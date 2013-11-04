$(call inherit-product, vendor/du/configs/common.mk)

$(call inherit-product, vendor/du/configs/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/jewel/jewel.mk)

# Device naming
PRODUCT_DEVICE := jewel
PRODUCT_NAME := du_jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO 4G LTE
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jewel BUILD_FINGERPRINT="htc/jewel/jewel:4.1.1/JRO03C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"

## overlays
DEVICE_PACKAGE_OVERLAYS += vendor/du/overlay/jewel

# Release name
PRODUCT_RELEASE_NAME := jewel

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybird_xhdpi_no_navbar.conf:system/etc/beerbong/properties.conf
