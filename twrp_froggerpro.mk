#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

DEVICE_PATH := device/nothing/froggerpro

# Inherit from Asteroids device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Include TWRP configurations
$(call inherit-product, $(DEVICE_PATH)/twrp_config.mk)

PRODUCT_DEVICE := froggerpro
PRODUCT_NAME := twrp_froggerpro
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A069P
PRODUCT_MANUFACTURER := nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FroggerPro-user 15 AQ3A.250924.001 2603231635 dev-keys"

BUILD_FINGERPRINT := Nothing/FroggerPro/FroggerPro:15/AQ3A.250924.001/260323163>
