# Inherit common stuff
$(call inherit-product, $(CUSTOM_VENDOR_DIR)/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/spn-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/selective-spn-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/selective-spn-conf.xml

# Phone related apps
PRODUCT_PACKAGES += \
    messaging \
    Stk
