# HACK for prebuilt libril and libcamera
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)

LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),u8120)

subdir_makefiles := \
    $(LOCAL_PATH)/libaudio/Android.mk \
    $(LOCAL_PATH)/libcamera/Android.mk \
    $(LOCAL_PATH)/librpc-qcom/Android.mk \
    $(LOCAL_PATH)/libgralloc/Android.mk \
    $(LOCAL_PATH)/libcopybit/Android.mk \
    $(LOCAL_PATH)/liblight/Android.mk \
    $(LOCAL_PATH)/liblights/Android.mk \
    $(LOCAL_PATH)/libstagefrighthw/Android.mk \
    $(LOCAL_PATH)/mm-core/Android.mk \
    $(LOCAL_PATH)/U8120Parts/Android.mk \
    $(LOCAL_PATH)/libpower/Android.mk \
    $(LOCAL_PATH)/libbt-qcom/Android.mk \
    $(LOCAL_PATH)/libsensors/Android.mk \
    $(LOCAL_PATH)/setbtmac/Android.mk \
    $(LOCAL_PATH)/setwifimac/Android.mk \
    $(LOCAL_PATH)/hwprops/Android.mk

#    $(LOCAL_PATH)/libgps/Android.mk \

    include $(subdir_makefiles)

endif
