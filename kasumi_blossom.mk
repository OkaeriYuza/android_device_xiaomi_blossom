#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from blossom device
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/kasumi/config/common_full_phone.mk)

PRODUCT_DEVICE := blossom
PRODUCT_NAME := kasumi_blossom
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
