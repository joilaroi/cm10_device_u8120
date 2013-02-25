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
    gralloc.u8120 \
    copybit.u8120

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8120 \
    audio_policy.u8120 \
    audio.usb.default \
    audio.a2dp.default \
    libaudioutils

# Lights
PRODUCT_PACKAGES += \
    lights.u8120 \
    lights.msm7k

# Sensors
PRODUCT_PACKAGES += \
    sensors.u8120

# Sensors
PRODUCT_PACKAGES += \
    gps.u8120 \
    librpc

# CM power hal
PRODUCT_PACKAGES += \
    power.u8120

# Camera
PRODUCT_PACKAGES += \
    camera.u8120

# Bluetooth & AR6000
PRODUCT_PACKAGES += \
    libbt-vendor \
    abtfilt \
    setbtmac \
    setwifimac

# Device Serial Number
PRODUCT_PACKAGES += \
    hwprops

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    setup_fs \
    librs_jni \
    rild \
    libhardware_legacy

# Zram
PRODUCT_PACKAGES += \
    rzscontrol

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# APPS
PRODUCT_PACKAGES += \
    FM \
    U8120Parts \
    Gallery2

# Build sim toolkit
PRODUCT_PACKAGES += \
    Stk

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/gps.conf:system/etc/gps.conf

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Vold and USB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/initramfs/init.u8120.usb.rc:root/init.u8120.usb.rc \
    $(LOCAL_PATH)/initramfs/init.u8120.rc:root/init.u8120.rc \
    $(LOCAL_PATH)/initramfs/ueventd.u8120.rc:root/ueventd.u8120.rc \
    $(LOCAL_PATH)/initramfs/initlogo.rle:root/initlogo.rle

# modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/ar6000.ko:system/wifi/ar6000.ko

# Wi-Fi related
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

# wifi Hotstap
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/hostapd:system/bin/hostapd

#    $(LOCAL_PATH)/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    $(LOCAL_PATH)/prebuilt/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    $(LOCAL_PATH)/prebuilt/wifi/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    $(LOCAL_PATH)/prebuilt/wifi/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    $(LOCAL_PATH)/prebuilt/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    $(LOCAL_PATH)/prebuilt/wifi/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    $(LOCAL_PATH)/prebuilt/wifi/device.bin:system/wifi/device.bin \
    $(LOCAL_PATH)/prebuilt/wifi/eeprom.bin:system/wifi/eeprom.bin \
    $(LOCAL_PATH)/prebuilt/wifi/eeprom.data:system/wifi/eeprom.data \
    $(LOCAL_PATH)/prebuilt/wifi/softmac:system/wifi/softmac

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \

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

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/abtfilt:system/bin/abtfilt \
    $(LOCAL_PATH)/prebuilt/etc/init.bt.sh:system/etc/init.bt.sh

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# USB tether
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/prebuilt/bin/huawei_tether:system/bin/huawei_tether

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/avago-OFN.idc:system/usr/idc/avago-OFN.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ofn_ok_key.idc:system/usr/idc/ofn_ok_key.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/avago-OFN.kl:system/usr/keylayout/avago-OFN.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/ofn_ok_key.kl:system/usr/keylayout/ofn_ok_key.kl

# Bootsound 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/bootsound:system/bin/bootsound \
    $(LOCAL_PATH)/prebuilt/media/poweron.ogg:system/media/poweron.ogg

# u8120Parts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.u8120parts.rc:system/etc/init.u8120parts.rc

# cdrom
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilt/cdrom/autorun.iso:system/cdrom/autorun.iso

PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

