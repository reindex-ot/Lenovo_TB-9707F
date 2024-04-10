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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TB-9707F device
$(call inherit-product, device/lenovo/TB-9707F/device.mk)

PRODUCT_DEVICE := TB-9707F
PRODUCT_NAME := omni_TB-9707F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-9707F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB-9707F_PRC-user 13 TKQ1.221013.002 15.0.418_240116 release-keys"

BUILD_FINGERPRINT := Lenovo/TB-9707F_PRC/TB-9707F:13/TKQ1.221013.002/15.0.418_240116:user/release-keys
