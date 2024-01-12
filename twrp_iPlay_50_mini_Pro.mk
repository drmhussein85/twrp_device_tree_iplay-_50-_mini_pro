#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#










# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from iPlay_50_mini_Pro device
$(call inherit-product, device/alldocube/iPlay_50_mini_Pro/device.mk)

PRODUCT_DEVICE := iPlay_50_mini_Pro
PRODUCT_NAME := twrp_iPlay_50_mini_Pro
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := iPlay 50 mini Pro
PRODUCT_MANUFACTURER := alldocube

PRODUCT_GMS_CLIENTID_BASE := android-alldocube

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="iPlay_50_mini_Pro-user 12 TP1A.220624.014 1687767699 release-keys"

BUILD_FINGERPRINT := Alldocube/iPlay_50_mini_Pro/iPlay_50_mini_Pro:13/TP1A.220624.014/1687767699:user/release-keys
