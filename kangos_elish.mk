#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common kangos stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

# Inherit from elish device
$(call inherit-product, device/xiaomi/elish/device.mk)

PRODUCT_NAME := kangos_elish
PRODUCT_DEVICE := elish
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Xiaomi Pad 5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="elish-user 11 RKQ1.200826.002 V13.0.10.0.RKYCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/elish/elish:11/RKQ1.200826.002/V13.0.10.0.RKYCNXM:user/release-keys
