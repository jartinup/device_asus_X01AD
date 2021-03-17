#
# Copyright (C) 2020 The RevengeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Pixel customization
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

#RevengeOS Stuff
REVENGEOS_BUILDTYPE := UNOFFICIAL
REVENGEOS_MAINTAINER := KryptoniteX

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := revengeos_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS Zenfone Max M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="msm8953_64-user 10 WW_Phone-202005071625 17.2018.2004.31-20200507 release-keys"
BUILD_FINGERPRINT := asus/WW_X01AD/ASUS_X01A_1:10/WW_Phone-202005071625/17.2018.2004.31-20200507:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-asus
