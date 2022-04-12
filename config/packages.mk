# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# ThemePicker
PRODUCT_PACKAGES += \
    ThemePicker

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Cutout control overlays
PRODUCT_PACKAGES += \
    HideCutout \
    StatusBarStock

# Navigation overlays
PRODUCT_PACKAGES += \
    NavigationBarNoHint \
    NavigationBarMode2ButtonOverlay

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

-include vendor/lawnchair/lawnchair.mk
-include packages/apps/Plugins/plugins.mk
