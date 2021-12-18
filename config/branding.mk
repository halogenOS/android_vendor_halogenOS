GET_VERSION := $(CUSTOM_VENDOR_DIR)/build/tools/getversion.py
$(shell $(GET_VERSION) invalidate)
CUSTOM_VERNUM := $(shell $(GET_VERSION) vernum)
CUSTOM_DISH := $(shell $(GET_VERSION) dish)
BUILD_DATE_TIME := $(BUILD_TIME)$(BUILD_DATE)
BUILD_TYPE := $(shell $(GET_VERSION) buildtype)
CUSTOM_BRANDING_VERSION := $(BUILD_TYPE)
CUSTOM_VERSION := $(shell $(GET_VERSION) version)
$(shell $(GET_VERSION) write)
ifeq ($(filter-out Cheesy Mashed Salad, $(BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif
