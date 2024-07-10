#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from d2s device
$(call inherit-product, device/samsung/d2s/device.mk)

PRODUCT_DEVICE := d2s
PRODUCT_NAME := omni_d2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N975F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="d2sxx-user 12 SP1A.210812.016 N975FXXS9HWG9 release-keys"

BUILD_FINGERPRINT := samsung/d2sxx/d2s:12/SP1A.210812.016/N975FXXS9HWG9:user/release-keys
