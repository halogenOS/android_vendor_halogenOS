# Telephony

IS_PHONE := true
PRODUCT_SIZE := mini

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Inherit common stuff
$(call inherit-product, $(CUSTOM_VENDOR_DIR)/config/common.mk)
