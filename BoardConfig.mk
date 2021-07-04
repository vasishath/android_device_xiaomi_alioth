#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/alioth

# Inherit from sm8250-common
#-include vendor/xiaomi/alioth/BoardConfigVendor.mk

-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := alioth

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Prebuilt Core

# Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/alioth/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
#TARGET_KERNEL_SOURCE := kernel/xiaomi/alioth
#TARGET_KERNEL_CONFIG := vendor/alioth_user_defconfig
ALLOW_MISSING_DEPENDENCIES := true


# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1200
TW_Y_OFFSET := 91
TW_H_OFFSET := -91
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_APEX := true
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
TW_INCLUDE_LIBRESETPROP := true
TW_DEVICE_MULTI_ASSERTS := "alioth,aliothin"

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
BOARD_USES_QCOM_FBE_DECRYPTION := true

TARGET_RECOVERY_DEVICE_MODULES += libion libandroidicu vendor.display.config@1.0 vendor.display.config@2.0 libdisplayconfig.qti


ENABLE_VIRTUAL_AB := true
DEVICE_RESOLUTION := 1080x2160
