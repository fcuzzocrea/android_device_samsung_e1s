#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/e1s

# Audio
PRODUCT_PACKAGES += \
    mixer_gains.xml \
    mixer_paths.xml

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Graphics
PRODUCT_PACKAGES += \
    calib_data_colormode0_off.xml \
    calib_data_colormode0_s6e3fae_e1.xml \
    calib_data_colormode0_s6e3fae_e1_hdr.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay


# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)


# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay

# Inherit from s5e9945 common
$(call inherit-product, device/samsung/s5e9945/common.mk)

# Inherit from vendor
$(call inherit-product, vendor/samsung/e1s/e1s-vendor.mk)
