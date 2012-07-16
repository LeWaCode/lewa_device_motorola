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

DEVICE=morrison

mkdir -p ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmmcamera.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmm-qcamera-tgt.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libhpprop.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/AudioFilter.csv ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/AudioPara4.csv ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libloc_api.so ../../../vendor/motorola/$DEVICE/proprietary


#RIL
adb pull /system/lib/libcm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril-moto-umts-1.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libsnd.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libvideotrimer.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/lib/libspeech.so ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tcmd_engine ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/tcmd_sql ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/wifi/nvram.txt ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/wifi/sdio-g-cdc-reclaim-wme.bin ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/touchpad ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/bin/fuel_gauge ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/lib/egl/libGLES_qcom.so ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /system/etc/akm/akmd_set.cfg ../../../vendor/motorola/$DEVICE/proprietary/
adb pull /sbin/charge_only_mode ../../../vendor/motorola/$DEVICE/proprietary

# BT
adb pull /system/bin/bt_downloader ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/bt_init ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/bin/bthelp ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/BCM4325D1_004.002.004.0218.0225.hcd ../../../vendor/motorola/$DEVICE/proprietary
adb pull /system/etc/bt_init.config ../../../vendor/motorola/$DEVICE/proprietary




(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/motorola/$DEVICE/$DEVICE-vendor-blobs.mk
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

# This file is generated by device/motorola/__DEVICE__/extract-files.sh


# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/motorola/__DEVICE__/proprietary/libloc_api.so:obj/lib/libloc_api.so \\
    vendor/motorola/__DEVICE__/proprietary/libril-qc-1.so:obj/lib/libril-qc-1.so

# All the blobs necessary for morrison
PRODUCT_COPY_FILES += \\
    vendor/motorola/__DEVICE__/proprietary/libmmcamera.so:/system/lib/libmmcamera.so \\
    vendor/motorola/__DEVICE__/proprietary/libmm-qcamera-tgt.so:/system/lib/libmm-qcamera-tgt.so \\
    vendor/motorola/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/motorola/__DEVICE__/proprietary/libhpprop.so:/system/lib/libhpprop.so \\
    vendor/motorola/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \\
    vendor/motorola/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \\
    vendor/motorola/__DEVICE__/proprietary/libdss.so:/system/lib/libdss.so \\
    vendor/motorola/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
    vendor/motorola/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \\
    vendor/motorola/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
    vendor/motorola/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \\
    vendor/motorola/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \\
    vendor/motorola/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/motorola/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \\
    vendor/motorola/__DEVICE__/proprietary/libril-moto-umts-1.so:/system/lib/libril-moto-umts-1.so \\
    vendor/motorola/__DEVICE__/proprietary/libril-qc-1.so:/system/lib/libril-qc-1.so \\
    vendor/motorola/__DEVICE__/proprietary/libsnd.so:/system/lib/libsnd.so \\
    vendor/motorola/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \\
    vendor/motorola/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so \\
    vendor/motorola/__DEVICE__/proprietary/libGLES_qcom.so:/system/lib/egl/libGLES_qcom.so \\
    vendor/motorola/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/motorola/__DEVICE__/proprietary/AudioFilter.csv:/system/etc/AudioFilter.csv \\
    vendor/motorola/__DEVICE__/proprietary/AudioPara4.csv:/system/etc/AudioPara4.csv \\
    vendor/motorola/__DEVICE__/proprietary/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
    vendor/motorola/__DEVICE__/proprietary/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
    vendor/motorola/__DEVICE__/proprietary/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
    vendor/motorola/__DEVICE__/proprietary/libvideotrimer.so:/system/lib/libvideotrimer.so \\
    vendor/motorola/__DEVICE__/proprietary/libspeech.so:/system/lib/libspeech.so \\
    vendor/motorola/__DEVICE__/proprietary/akmd2:/system/bin/akmd2 \\
    vendor/motorola/__DEVICE__/proprietary/bthelp:/system/bin/bthelp \\
    vendor/motorola/__DEVICE__/proprietary/tcmd_engine:/system/bin/tcmd_engine \\
    vendor/motorola/__DEVICE__/proprietary/tcmd_sql:/system/bin/tcmd_sql \\
    vendor/motorola/__DEVICE__/proprietary/nvram.txt:/system/etc/wifi/nvram.txt \\
    vendor/motorola/__DEVICE__/proprietary/sdio-g-cdc-reclaim-wme.bin:/system/etc/wifi/sdio-g-cdc-reclaim-wme.bin \\
    vendor/motorola/__DEVICE__/proprietary/touchpad:/system/bin/touchpad \\
    vendor/motorola/__DEVICE__/proprietary/fuel_gauge:/system/bin/fuel_gauge \\
    vendor/motorola/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/motorola/__DEVICE__/proprietary/akmd_set.cfg:/system/etc/akm/akmd_set.cfg \\
    vendor/motorola/__DEVICE__/proprietary/BCM4325D1_004.002.004.0218.0225.hcd:/system/etc/BCM4325D1_004.002.004.0218.0225.hcd \\
    vendor/motorola/__DEVICE__/proprietary/bt_downloader:/system/bin/bt_downloader \\
    vendor/motorola/__DEVICE__/proprietary/bt_init:/system/bin/bt_init \\
    vendor/motorola/__DEVICE__/proprietary/bt_init.config:/system/etc/bt_init.config \\
    vendor/motorola/__DEVICE__/proprietary/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \\
    vendor/motorola/__DEVICE__/proprietary/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \\
    vendor/motorola/__DEVICE__/proprietary/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \\
    vendor/motorola/__DEVICE__/proprietary/qwerty.kl:/system/usr/keylayout/qwerty.kl \\
    vendor/motorola/__DEVICE__/proprietary/charge_only_mode:root/sbin/charge_only_mode



EOF

./setup-makefiles.sh
