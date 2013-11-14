# Inherit du common_tablet bits
$(call inherit-product, vendor/du/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

# Flo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/flo

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := du_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.3/JSS15Q/779366:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JSS15Q 779366 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip \
    vendor/du/hybrid/hybrid_tvdpi.conf:system/etc/beerbong/properties.conf
