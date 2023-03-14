#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oplus/RMX3461

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth/include

# Include the common OEM chipset BoardConfig.
include device/oplus/sm8350-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 450

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# RIL
CUSTOM_APNS_FILE := $(COMMON_PATH)/configs/apns-conf.xml
ENABLE_VENDOR_RIL_SERVICE := true

# Recovery
TARGET_RECOVERY_FSTAB += $(DEVICE_PATH)/init/recovery.fstab
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oplus/RMX3461/BoardConfigVendor.mk
