# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/zte/blade/full_blade.mk

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += device/zte/blade/overlay

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

#include qcom opensource features
#$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
#$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_FINGERPRINT="google/yakju/crespo:4.1.1/JRO03C/113740:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 113740 release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := aokp_blade
PRODUCT_DEVICE := blade
PRODUCT_BRAND := zte
PRODUCT_MANUFACTURER := zte
PRODUCT_MODEL := Blade
