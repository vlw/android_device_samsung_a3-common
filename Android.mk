# Copyright (C) 2017 The Android Open-Source Project
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

LOCAL_PATH := $(call my-dir)

SAMSUNG_TARGETS := a3lte a3ulte a33g

ifneq ($(filter $(SAMSUNG_TARGETS),$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Kiwi
KIWI_IMAGES := \
    kiwi.b00 kiwi.b01 kiwi.b02 kiwi.b03 kiwi.mdt

KIWI_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(KIWI_IMAGES)))
$(KIWI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "KIWI firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KIWI_SYMLINKS)

# Create links for audcal data files
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)

endif
