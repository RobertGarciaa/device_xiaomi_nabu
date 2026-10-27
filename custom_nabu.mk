#
# SPDX-License-Identifier: Apache-2.0
#
# PixelOS product for the Xiaomi Pad 5 (nabu).
#
# The stock device tree was written for LineageOS and inherited vendor/lineage,
# vendor/gapps and a lineage_nabu product. This product keeps the device and
# common trees unchanged and swaps the product-level pieces for PixelOS ones.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from the nabu device tree.
$(call inherit-product, device/xiaomi/nabu/device.mk)

# Inherit the PixelOS tablet product. This provides the Lineage base, the
# tablet configuration and vendor/custom on top.
$(call inherit-product, vendor/custom/config/common_full_tablet_wifionly.mk)

# The device is Wi-Fi only, so there is no telephony stack and no GMS comms
# suite. common_full_tablet_wifionly already sets these; repeat them here so the
# intent survives future changes to the shared product.
TARGET_IS_TABLET := true
WITH_GMS_COMMS_SUITE := false

# Stock Xiaomi apps for the Pad 5.
$(call inherit-product, vendor/xiaomi/apps-nabu/apps.mk)

PRODUCT_NAME := custom_nabu
PRODUCT_DEVICE := nabu
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 21051182G
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Match the stock Pad 5 global firmware this port was extracted from.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="nabu_global-user 13 RKQ1.200826.002 V816.0.6.0.TKXMIXM release-keys" \
    BuildFingerprint=Xiaomi/nabu_global/nabu:13/RKQ1.200826.002/V816.0.6.0.TKXMIXM:user/release-keys \
    DeviceProduct=nabu \
    SystemName=nabu_global
