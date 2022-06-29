# Inherit common stuff
$(call inherit-product, $(CUSTOM_VENDOR_DIR)/config/common.mk)

PRODUCT_PACKAGES += \
	Etar \
	ExactCalculator \
	Jelly

PRODUCT_SIZE := full
