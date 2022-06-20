# Inherit common stuff
$(call inherit-product, $(CUSTOM_VENDOR_DIR)/config/common.mk)

# Inherit Lineage car device tree
$(call inherit-product, device/custom/car/aosp_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
