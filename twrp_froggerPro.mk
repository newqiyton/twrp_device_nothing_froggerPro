#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

DEVICE_PATH := device/nothing/froggerPro

# Include TWRP props
$(call inherit-product, $(DEVICE_PATH)/twrp_config.mk)

PRODUCT_DEVICE := froggerPro
PRODUCT_NAME := twrp_froggerPro
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A069P
PRODUCT_MANUFACTURER := nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FroggerPro-user 15 AQ3A.250924.001 2603231635 dev-keys"

BUILD_FINGERPRINT := Nothing/FroggerPro/FroggerPro:15/AQ3A.250924.001/2603231635:user/release-keys



