QCOM_MEDIA_ROOT := $(call my-dir)

#Compile these for all targets under QCOM_BOARD_PLATFORMS list.
ifeq ($(call is-board-platform-in-list, $(QCOM_BOARD_PLATFORMS)),true)
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
include $(QCOM_MEDIA_ROOT)/libaac/Android.mk
endif

ifeq ($(TARGET_BOARD_AUTO),true)
include $(QCOM_MEDIA_ROOT)/libsidebandstreamhandle/Android.mk
endif
