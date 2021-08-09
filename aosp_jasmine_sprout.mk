#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2021 ArrowOS
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit PPUI product configuration
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.ppui.device_name=jasmine_sprout \
	ro.ppui.version=3.8 \
	ro.ppui.version_code=Hikaru \
	ro.ppui.is_official=true \
	ro.ppui.maintainer_name=Rahul


# Inherit from jasmine_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi A2
PRODUCT_NAME := aosp_jasmine_sprout

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := jasmine

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001.A1 7474174 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
