BR2_EXTERNAL_PROJECT_BASE_PATH := $(call qstrip,$(BR2_EXTERNAL_PROJECT_BASE_PATH))
BR2_EXTERNAL += $(BR2_EXTERNAL_PROJECT_BASE_PATH)

include $(BR2_EXTERNAL_PROJECT_BASE_PATH)/package/aesd-assignments/aesd-assignments.mk
