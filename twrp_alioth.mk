#
# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2021-2023 The OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

# Release name
PRODUCT_RELEASE_NAME := alioth

DEVICE_PATH := device/xiaomi/alioth

# Our various search paths for Soong namespaces
MIKONA_SOONG_PATHS := device/xiaomi/mikona device/xiaomi/alioth device/xiaomi/munch

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure gsi_keys.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from alioth  device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, device/xiaomi/alioth/fox_alioth.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := POCO
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#
