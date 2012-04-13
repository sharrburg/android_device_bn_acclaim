#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

#mk with $(shell sh $(LOCAL_PATH)/cat2ndboot.sh)

DEVICE=acclaim
MANUFACTURER=bn
LOCAL_PATH=$(dirname $0)

#mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE
echo $LOCAL_PATH
cp $LOCAL_PATH/../../../out/target/product/$DEVICE/boot.img $LOCAL_PATH/boot2.img
cat $LOCAL_PATH/irboot.img $LOCAL_PATH/boot2.img > $LOCAL_PATH/boot.img
mv $LOCAL_PATH/boot.img $LOCAL_PATH/../../../out/target/product/$DEVICE/boot.img
rm $LOCAL_PATH/boot2.img
