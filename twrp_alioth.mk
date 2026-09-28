#
# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2021-2023 The OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-or-later
#

# Release name
PRODUCT_RELEASE_NAME := alioth

DEVICE_PATH := device/xiaomi/alioth

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := POCO
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#
