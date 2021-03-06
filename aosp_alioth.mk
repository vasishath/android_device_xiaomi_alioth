#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 11X
TARGET_SCREEN_DENSITY:=450


TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
