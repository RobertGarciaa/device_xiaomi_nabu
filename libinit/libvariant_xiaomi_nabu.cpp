/*
 * Copyright (C) 2021-2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libvariant.h>

static const variant_info nabu_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "nabu",
    .marketname = "Xiaomi Pad 5",
    .model = "21051182G",
    .build_fingerprint = "Xiaomi/nabu_global/nabu:13/RKQ1.200826.002/V816.0.6.0.TKXMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info nabu_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "nabu",
    .marketname = "Xiaomi Pad 5",
    .model = "21051182C",
    .build_fingerprint = "Xiaomi/nabu/nabu:13/RKQ1.200826.002/V816.0.3.0.TKXCNXM:user/release-keys",

    .nfc = false,
};

const std::vector<variant_info> variants = {
    nabu_global_info,
    nabu_info,
};
