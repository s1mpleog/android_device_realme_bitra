#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit some common blaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit Basic Call Recorder (For Project Blaze A14)
$(call inherit-product, vendor/bcr/bcr.mk)

# ViPER4Android FX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Project Blaze Maintainer
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := OMKAR-PARTE

# Common Flag
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# GMS Flags
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true
TARGET_INCLUDES_SOUND_AMPLIFIER := false
TARGET_INCLUDES_ARCORE := false
TARGET_INCLUDES_GOOGLE_WELLBEING := false
TARGET_REPLACE_GOOGLE_CLOCK := true


# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := blaze_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX3370
PRODUCT_SYSTEM_DEVICE := RE879AL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3370-user 13 TP1A.220905.001 1700128995529 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.149e403-1-5b8f:user/release-keys
