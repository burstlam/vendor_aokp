# Specify phone tech before including full_phone
$(call inherit-product, vendor/du/configs/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := l900

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l900
PRODUCT_NAME := du_l900
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltespr BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.2/JZO54K/L900VPAMC2:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.2 JZO54K L900VPAMC2 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip  \
    vendor/du/hybrid/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf
