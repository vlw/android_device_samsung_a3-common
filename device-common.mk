#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/a3-common/a3-common-vendor.mk)

LOCAL_PATH := device/samsung/a3-common

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/a3-common/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# append the updater uri to the product properties if set
ifneq ($(CM_UPDATER_OTA_URI),)
	PRODUCT_PROPERTY_OVERRIDES += $(CM_UPDATER_OTA_URI)
endif
