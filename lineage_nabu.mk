#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from nabu device
$(call inherit-product, device/xiaomi/nabu/device.mk)

# Call mindthegapps
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
 
WITH_GAPPS := true
TARGET_DISABLE_MATLOG := true

PRODUCT_NAME := lineage_nabu
PRODUCT_DEVICE := nabu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 21051182G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="nabu_global-user 13 RKQ1.200826.002 V816.0.6.0.TKXMIXM release-keys" \
    BuildFingerprint=Xiaomi/nabu_global/nabu:13/RKQ1.200826.002/V816.0.6.0.TKXMIXM:user/release-keys
