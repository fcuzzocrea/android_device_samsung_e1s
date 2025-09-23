#
# Copyright 2014 The Android Open-Source Project
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
#

## Inherit from e1s device
$(call inherit-product, device/samsung/e1s/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e1s
PRODUCT_NAME := lineage_e1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S921B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=e1s \
    DeviceProduct=e1s \
    SystemDevice=e1s \
    SystemName=e1s \
    BuildFingerprint=samsung/e1sxxx/e1s:14/UP1A.231005.007/S921BXXS9BYH2:user/release-keys \
    BuildDesc="e1sxxx-user 14 UP1A.231005.007 S921BXXS9BYH2 release-keys"

