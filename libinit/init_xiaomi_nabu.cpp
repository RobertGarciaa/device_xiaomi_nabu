/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t nabu_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "nabu",
    .mod_device = "nabu_global",
    .marketname = "Xiaomi Pad 5",
    .model = "21051182G",
    .build_fingerprint = "Xiaomi/nabu_global/nabu:13/RKQ1.200826.002/V816.0.6.0.TKXMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t nabu_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "nabu",
    .mod_device = "nabu",
    .marketname = "Xiaomi Pad 5",
    .model = "21051182C",
    .build_fingerprint = "Xiaomi/nabu/nabu:13/RKQ1.200826.002/V816.0.3.0.TKXCNXM:user/release-keys",

    .nfc = false,
};

static const std::vector<variant_info_t> variants = {
    nabu_global_info,
    nabu_info,
};

void vendor_load_properties() {
    set_dalvik_heap();
    search_variant(variants);
}
