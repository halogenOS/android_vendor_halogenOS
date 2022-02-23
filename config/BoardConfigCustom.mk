include $(CUSTOM_VENDOR_DIR)/config/BoardConfigKernel.mk

BOARD_USES_QCOM_HARDWARE ?= $(PRODUCT_USES_QCOM_HARDWARE)
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include $(CUSTOM_VENDOR_DIR)/config/ProductConfigQcom.mk
endif

include $(CUSTOM_VENDOR_DIR)/config/BoardConfigSoong.mk
