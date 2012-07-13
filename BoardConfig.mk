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

#
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8120/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8120/include

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7k
#TARGET_ARCH_VARIANT := armv6j
TARGET_ARCH_VARIANT := armv5te-vfp
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := u8120
TARGET_OTA_ASSERT_DEVICE := u8120,u8100,u8109,u8110,ascend,u8160,hwu8160

# Preload the boot animation to avoid jerkiness
TARGET_BOOTANIMATION_PRELOAD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_ADRENO_130_GPU := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8120

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
#BOARD_VENDOR_USE_AKMD := akm8973

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true

# RIL
BOARD_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBRIL := vendor/huawei/u8120/proprietary/lib/libril.so

# Graphics
USE_OPENGL_RENDERER := false
BOARD_HAS_LIMITED_EGL:= true
BOARD_EGL_CFG := device/huawei/u8120/prebuilt/lib/egl/egl.cfg
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_FORCE_DITHERING := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DUNABLE_TO_DEQUEUE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

# Camera
# BOARD_USE_FROYO_LIBCAMERA := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# FM Radio
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

TARGET_ELECTRONBEAM_FRAMES := 10

TARGET_FORCE_CPU_UPLOAD := true

# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_USES_GENLOCK := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_HAVE_BYPASS := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_AUDIO_LEGACY := false
# prevent breakage from QCOM_HARDWARE in system/audio.h
COMMON_GLOBAL_CFLAGS += -DLEGACY_AUDIO_COMPAT

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_atheros
BOARD_HOSTAPD_DRIVER := AR6000
BOARD_HOSTAPD_PRIVATE_LIB :=
BOARD_WLAN_DEVICE := ar6000
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := "ar6000"
WIFI_DRIVER_LOADER_DELAY := 3000000
WIFI_DRIVER_MODULE_ARG := "softmac_file=/system/wifi/softmac"

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8120/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"

# Kernel
#TARGET_PREBUILT_KERNEL := device/huawei/u8120/prebuilt/kernel
BUILD_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/u8120_codeaurora_ics
TARGET_KERNEL_CONFIG := cm_u8120_defconfig
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_PAGESIZE := 4096

# Custom releasetools for old partition table.
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/u8120/releasetools/ota_from_target_files

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 04600000 00020000 "cache"
# mtd6: 0bda0000 00020000 "userdata"
# mtd7: 01400000 00020000 "userdata2"

BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 178257920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 198836224
BOARD_CACHEIMAGE_PARTITION_SIZE := 73400320

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144
