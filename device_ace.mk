$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/ace/ace-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/ace/overlay

LOCAL_PATH := device/htc/ace
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    device/htc/ace/recovery/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/ace/recovery/detect_key:recovery/root/sbin/detect_key \
    device/htc/ace/recovery/init.recovery.ace.rc:root/init.recovery.ace.rc \
    device/htc/ace/recovery/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/ace/recovery/power_test:recovery/root/sbin/power_test \
    device/htc/ace/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/htc/ace/rootdir/fstab.spade:recovery/root/fstab.spade

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ace
PRODUCT_DEVICE := ace
