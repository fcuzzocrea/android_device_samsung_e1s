#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from s5e9945 common
include device/samsung/s5e9945/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/e1s

# Display
TARGET_SCREEN_DENSITY := 418

# DTBO
BOARD_DTBO_CFG := $(DEVICE_PATH)/configs/kernel/e1s.cfg

# Modules
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD += mcd-panel-s6e3fae_e1s.ko sec-auth-ds28e30.ko
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD += $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)
BOOT_KERNEL_MODULES += $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)
RECOVERY_KERNEL_MODULES += $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

# OTA
TARGET_OTA_ASSERT_DEVICE := e1s
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Call the proprietary setup
include vendor/samsung/e1s/BoardConfigVendor.mk
