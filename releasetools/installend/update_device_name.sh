#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
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

# Detect variant and copy its specific-blobs
. /tmp/install/bin/variant_hook.sh

DEVICE="A300${VARIANT}"

# Mount /system
mount_fs system

# update the device name in the prop
ui_print "Device variant is $DEVICE"
ui_print "Updating device variant name ..."

sed -i s/ro.product.model=.*/ro.product.model=${DEVICE}/g /system/build.prop
sed -i s/ro.product.device=.*/ro.product.device=${DEVNAME}/g /system/build.prop
sed -i s/ro.product.name=.*/ro.product.name=${PRODNAME}/g /system/build.prop

#sed -i s/ro.build.description=.*/ro.build.description=a3ltexx-user 5.0.2 LRX22G A300FXXU1BQB2 release-keys/g /system/build.prop
#sed -i s/ro.build.fingerprint=.*/ro.build.fingerprint=samsung//a3ltexx//a3lte:5.0.2//LRX22G//A300FXXU1BQB2:user//release-keys/g /system/build.prop 
