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
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := u8120
TARGET_OTA_ASSERT_DEVICE := u8120,u8100,u8109,u8110,ascend,u8160,hwu8160

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8120/bluetooth

## web
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_WEBKIT_USE_MORE_MEMORY := true
# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8120
BOARD_USES_QCOM_LIBRPC := true

# touchscreen
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# trackball
BOARD_USE_LEGACY_TRACKPAD := true

# Minimal fonts
SMALLER_FONT_FOOTPRINT := true

# RIL
BOARD_USES_LEGACY_RIL := true
BOARD_PROVIDES_LIBRIL := true

# U8120 graphics
BOARD_NO_RGBX_8888 := true
COMMON_GLOBAL_CFLAGS += -DNO_RGBX_8888 -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DUNABLE_TO_DEQUEUE -DREFRESH_RATE=60
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
USE_OPENGL_RENDERER := false
BOARD_EGL_CFG := device/huawei/u8120/prebuilt/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_DISABLE_ARM_PIE := true
BOARD_USES_HWCOMPOSER := false
BOARD_CPU_COLOR_CONVERT := true
TARGET_ELECTRONBEAM_FRAMES := 6

# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_GENLOCK := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_HAVE_BYPASS := false

# Qcom specifics
BOARD_USES_QCOM_LIBS := true
TARGET_NO_HW_VSYNC := true
TARGET_NO_HW_OVERLAY := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# camera
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK -DICS_CAMERA_BLOB

# FM radio support
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DQCOM_FM_ENABLED
BOARD_FM_DEVICE := bcm2049

# audio
TARGET_PROVIDES_LIBAUDIO := true

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_atheros
BOARD_WLAN_DEVICE := ar6000
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000
WIFI_DRIVER_LOADER_DELAY := 3000000
WIFI_DRIVER_MODULE_ARG := "softmac_file=/system/wifi/softmac"
BOARD_HOSTAPD_DRIVER := AR6000

#TARGET_CUSTOM_WIFI := ../../device/huawei/u8120/libhardware_legacy/wifi/wifi.c

# Recovery
BOARD_LDPI_RECOVERY := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8120/recovery/recovery_kernel
TARGET_RECOVERY_INITRC := device/huawei/u8120/recovery/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8120/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
TARGET_RECOVERY_FSTAB := device/huawei/u8120/recovery/recovery.fstab

# Kernel
#TARGET_PREBUILT_KERNEL := device/huawei/u8120/prebuilt/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BUILD_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/u8120_codeaurora_ics
TARGET_KERNEL_CONFIG := cm_u8120_defconfig
BOARD_KERNEL_BASE := 0x00208000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=u8120
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
