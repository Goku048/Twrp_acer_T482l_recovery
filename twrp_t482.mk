# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuffs
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from AcerOne8T482L device
$(call inherit-product, device/acer/T482L/device.mk)

PRODUCT_DEVICE := T482L
PRODUCT_NAME := twrp_T482L
PRODUCT_BRAND := Acer
PRODUCT_MODEL := Acer One 8 T4-82L
PRODUCT_MANUFACTURER := acer

PRODUCT_GMS_CLIENTID_BASE := android-acer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8766p1_64_bsp-user 10 QP1A.190711.020 1637807355 release-keys"

BUILD_FINGERPRINT := Acer/Acer_One8-T4-82L/AcerOne8T482L:10/QP1A.190711.020/1637807355:user/release-keys
