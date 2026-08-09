LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),T482L)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
include $(CLEAR_VARS)
