ifneq ($(filter OFFICIAL CI,$(CUSTOM_BUILD_TYPE)),)
# PRODUCT_PACKAGES += \
    Updates
$(warning "OTA Makefile included but there's no OTA app to build yet.")
$(warning "TODO: Implement an OTA app or completely remove")
$(warning "$(CUSTOM_VENDOR_DIR)/config/ota.mk entirely.")
endif
