ALLOWED_SELINUX_VIOLATORS :=

ifeq ($(PRODUCT_USES_QCOM_HARDWARE),true)
include $(CUSTOM_VENDOR_DIR)/config/ProductConfigQcom.mk
endif

PRODUCT_SOONG_NAMESPACES += $(PATHMAP_SOONG_NAMESPACES)

# Required for QTI BT Stack
ifeq ($(TARGET_USE_QTI_BT_STACK),true)
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys/packages/apps/Bluetooth \
    vendor/qcom/opensource/commonsys/system/bt/conf
else
PRODUCT_SOONG_NAMESPACES += packages/apps/Bluetooth
endif

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/50-base.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-base.sh \

ifneq ($(strip $(AB_OTA_PARTITIONS) $(AB_OTA_POSTINSTALL_CONFIG)),)
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh
endif

# Bootanimation
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)-prebuilts/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.build.selinux=1 \
    persist.sys.disable_rescue=true \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# POSP Common
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/permissions/co.customproject.posp.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/co.customproject.posp.xml \

# Fries
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/permissions/privapp-permissions-fries.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-fries.xml \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/sysconfig/customfries-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/customfries-hiddenapi-package-whitelist.xml

# Fix Google dialer
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/prebuilt/common/etc/dialer_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/dialer_experience.xml

# Set custom volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=30 \
    ro.config.bt_sco_vol_steps=30

# Power whitelist
PRODUCT_COPY_FILES += \
    $(CUSTOM_VENDOR_DIR)/config/permissions/custom-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/custom-power-whitelist.xml

# Clang
ifeq ($(TARGET_USE_LATEST_CLANG),true)
    TARGET_KERNEL_CLANG_VERSION := $(shell grep -v based prebuilts/clang/host/$(HOST_OS)-x86/*/AndroidVersion.txt | sort | tail -n 1 | cut -d : -f 2)
endif

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Enable one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# exFAT
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(CUSTOM_VENDOR_DIR)/overlay/common
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(CUSTOM_VENDOR_DIR)/overlay/common

# Pixel sounds
include $(CUSTOM_VENDOR_DIR)/config/sounds.mk

# Packages
include $(CUSTOM_VENDOR_DIR)/config/packages.mk

# GMS
ifeq ($(WITH_GMS), true)
    $(call inherit-product, vendor/google/gms/config.mk)
endif

# Branding
include $(CUSTOM_VENDOR_DIR)/config/branding.mk
