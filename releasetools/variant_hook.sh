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
BOOTLOADER=`getprop ro.bootloader`

case $BOOTLOADER in
  A300FU*)   VARIANT="FU" DEVNAME="a3ulte"   PRODNAME="a3ultexx" ;;
  A300YZ*)   VARIANT="YZ" DEVNAME="a3ltezt"  PRODNAME="a3ltezt"  ;;
  A3000*)    VARIANT="0"  DEVNAME="a3ltechn" PRODNAME="a3ltezc"  ;;
  A3009*)    VARIANT="9"  DEVNAME="a3ltectc" PRODNAME="a3ltectc" ;;
  A300F*)    VARIANT="F"  DEVNAME="a3lte"    PRODNAME="a3ltexx"  ;;
  A300H*)    VARIANT="H"  DEVNAME="a33g"     PRODNAME="a33gxx"   ;;
  A300M*)    VARIANT="M"  DEVNAME="a3lte"    PRODNAME="a3lteub"  ;;
  A300G*)    VARIANT="G"  DEVNAME="a3ltedd"  PRODNAME="a3ltezso" ;;
  A300Y*)    VARIANT="Y"  DEVNAME="a3ulte"   PRODNAME="a3ultedv" ;;
  *)         VARIANT="unknown" ;;
esac

# exit if the device is unknown
if [ $VARIANT == "unknown" ]; then
	ui_print "Unknown device variant detected. Aborting..."
	exit 1
fi
