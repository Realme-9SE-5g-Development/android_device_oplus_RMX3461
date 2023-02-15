#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX3461 device
$(call inherit-product, device/oplus/RMX3461/device.mk)

# Inherit some common Elixir Stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Official-ify
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_RMX3461
PRODUCT_DEVICE := RMX3461
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3461

PRODUCT_SYSTEM_NAME := RMX3461
PRODUCT_SYSTEM_DEVICE := RE54BFL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3461-user 12 RKQ1.210503.001 R.202210211219 release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3461/RE54BFL1:12/RKQ1.210503.001/R.202210211219:user/release-keys
