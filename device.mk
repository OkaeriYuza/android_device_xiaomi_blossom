#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 29

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720

# Screen density
PRODUCT_AAPT_CONFIG := xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi

# Flatten APEXs for performance
OVERRIDE_TARGET_FLATTEN_APEX := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# HACK: Avoid usb crash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
    persist.adb.nonblocking_ffs=0 \
    ro.adb.nonblocking_ffs=0

# Rootdir
PRODUCT_PACKAGES += \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.mt6762 \
    fstab.mt6765 \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6762.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6762:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6762 \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6765:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6765

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/blossom/blossom-vendor.mk)
