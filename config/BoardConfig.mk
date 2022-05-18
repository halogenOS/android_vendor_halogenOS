include $(CUSTOM_VENDOR_DIR)/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include $(CUSTOM_VENDOR_DIR)/config/BoardConfigQcom.mk
endif

# Custom AVB Key
ifeq ($(TARGET_USES_CUSTOM_AVB_KEY),true)
include $(CUSTOM_VENDOR_DIR)/config/BoardConfigAvb.mk
endif

include $(CUSTOM_VENDOR_DIR)/config/BoardConfigSoong.mk

# Namespace for fwk-detect
TARGET_FWK_DETECT_PATH ?= hardware/qcom-caf/common
PRODUCT_SOONG_NAMESPACES += \
    $(TARGET_FWK_DETECT_PATH)/fwk-detect
