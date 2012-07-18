# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/ldpi-common/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := U8120

PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Dalvik tweak
DISABLE_DEXPREOPT := false
PRODUCT_TAGS += dalvik.gc.type-precise

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7k \
    copybit.msm7k

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7k \
    audio_policy.msm7k \
    audio.a2dp.default \
    libaudio \
    libaudioutils \

# Misc
PRODUCT_PACKAGES += \
    librpc \
    com.android.future.usb.accessory

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# hostap
PRODUCT_PACKAGES += \
    hostap \
    hostapd.conf \
    libhostapdcli

# Other
PRODUCT_PACKAGES += \
    lights.msm7k \
    gps.u8120 \
    camera.msm7k \
    libcamera

# APPS
PRODUCT_PACKAGES += \
    Gallery \
    SoundRecorder \
    VoiceDialer \
    FM \
    Launcher2

# My apps
PRODUCT_PACKAGES += \
    GooManager \
    FileManager

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/prebuilt/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/prebuilt/initlogo.rle:root/initlogo.rle

# modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/ar6000.ko:system/wifi/ar6000.ko

# Wi-Fi related
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

# wifi Hotstap
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    $(LOCAL_PATH)/firmware/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    $(LOCAL_PATH)/firmware/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    $(LOCAL_PATH)/firmware/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    $(LOCAL_PATH)/firmware/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    $(LOCAL_PATH)/firmware/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    $(LOCAL_PATH)/firmware/device.bin:system/wifi/device.bin \
    $(LOCAL_PATH)/firmware/eeprom.bin:system/wifi/eeprom.bin \
    $(LOCAL_PATH)/firmware/eeprom.data:system/wifi/eeprom.data \
    $(LOCAL_PATH)/firmware/softmac:system/wifi/softmac

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    $(LOCAL_PATH)/prebuilt/lib/libcamera.so:obj/lib/libcamera.so

# surf_keypad
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin

# Zipalign and scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02huawei:system/etc/init.d/02huawei \
    $(LOCAL_PATH)/prebuilt/etc/init.d/07zipalign:system/etc/init.d/07zipalign \
    $(LOCAL_PATH)/prebuilt/bin/zipalign:system/bin/zipalign \
    $(LOCAL_PATH)/prebuilt/etc/init.d/08zram:system/etc/init.d/08zram

# sysctl.conf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl

# USB autorun.iso for cdrom emulation in kernel driver
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

# wifi tether libs
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf \
    $(LOCAL_PATH)/prebuilt/bin/abtfilt:system/bin/abtfilt

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen_Ver23.idc:system/usr/idc/melfas-touchscreen_Ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/u8120-keypad.idc:system/usr/idc/u8120-keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/avago-OFN.idc:system/usr/idc/avago-OFN.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ofn_ok_key.idc:system/usr/idc/ofn_ok_key.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/avago-OFN.kl:system/usr/keylayout/avago-OFN.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/ofn_ok_key.kl:system/usr/keylayout/ofn_ok_key.kl

