# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit some common Awaken stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AOSP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration for elish.
$(call inherit-product, device/xiaomi/elish/device.mk)

PRODUCT_NAME := lineage_elish
PRODUCT_DEVICE := elish
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 5 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_padext4_cn-user 13 TKQ1.221114.001 V816.0.1.0.TKYCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/elish/elish:13/RKQ1.211001.001/V816.0.1.0.TKYCNXM:user/release-keys
