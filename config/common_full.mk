# Inherit common stuff
$(call inherit-product, $(CUSTOM_VENDOR_DIR)/config/common.mk)

PRODUCT_PACKAGES += \
	Etar \
	ExactCalculator \
	Jelly

PRODUCT_SIZE := full

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/source-sans-pro/fonts.mk)

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontLatoOverlay \
    FontRubikOverlay \
    FontSourceSansProOverlay

# Accents
PRODUCT_PACKAGES += \
    CustomBlueAccent

