LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8120)

subdir_makefiles := \
    $(LOCAL_PATH)/libaudio/Android.mk \
    $(LOCAL_PATH)/libcamera/Android.mk \
    $(LOCAL_PATH)/liblight/Android.mk \
    $(LOCAL_PATH)/GooManager/Android.mk \
    $(LOCAL_PATH)/FileManager/Android.mk

    include $(subdir_makefiles)

endif
