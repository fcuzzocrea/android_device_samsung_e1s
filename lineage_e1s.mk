#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from e1s device
$(call inherit-product, device/samsung/e1s/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e1s
PRODUCT_NAME := lineage_e1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S921B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="e1sxxx-user 14 UP1A.231005.007 S921BXXS9BYH2 release-keys" \
    BuildFingerprint=samsung/e1sxxx/e1s:14/UP1A.231005.007/S921BXXS9BYH2:user/release-keys \
    DeviceName=e1s \
    DeviceProduct=e1sxxx \
    SystemDevice=e1s \
    SystemName=e1s \
