GET_VERSION := $(CUSTOM_VENDOR_DIR)/build/tools/getversion.py
$(shell $(GET_VERSION) invalidate)
CUSTOM_VERNUM := $(shell $(GET_VERSION) version)
CUSTOM_VERSION_NAME := $(shell $(GET_VERSION) version_name)
BUILD_TIME := $(shell date -u +%H%M)
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_DATE_TIME := $(BUILD_DATE)$(BUILD_TIME)
BUILD_TYPE := $(shell $(GET_VERSION) buildtype)
CUSTOM_BRANDING_VERSION := $(BUILD_TYPE)
CUSTOM_VERSION := $(shell basename $(CUSTOM_VENDOR_DIR))-$(CUSTOM_VERNUM)-$(BUILD_DATE_TIME)-$(BUILD_TYPE)
$(shell $(GET_VERSION) write)

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif
