#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/nabu

# Product scope variables that the common BoardConfig also reads.
#
# device.mk sets these for the product makefiles, but BoardConfigCommon.mk is
# evaluated in board scope, where they were previously empty. That silently
# turned off virtual A/B, the vendor-boot recovery resources and the tablet-only
# package decisions. Repeat them here so both scopes agree.
TARGET_IS_VAB := true
TARGET_IS_TABLET := true

# Display
TARGET_SCREEN_DENSITY := 340

# Init
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_nabu

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/nabu.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/nabu/BoardConfigVendor.mk

# Xiaomi Pad 5 stock Dolby Atmos
TARGET_ENABLE_XIAOMI_DOLBY ?= true
ifeq ($(TARGET_ENABLE_XIAOMI_DOLBY),true)
include vendor/xiaomi/dolby-nabu/BoardConfig.mk
endif

# Pad 5 stock input/OTA HAL policy, independent of Dolby Atmos.
TARGET_ENABLE_XIAOMI_INPUT ?= true
ifeq ($(TARGET_ENABLE_XIAOMI_INPUT),true)
include vendor/xiaomi/dolby-nabu/input/BoardConfig.mk
endif

# Stock Xiaomi apps (Notes, Creation, WPS for Pad).
TARGET_ENABLE_XIAOMI_APPS ?= true
ifeq ($(TARGET_ENABLE_XIAOMI_APPS),true)
include vendor/xiaomi/apps-nabu/BoardConfig.mk
endif
