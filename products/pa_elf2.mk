# Check for target product
ifeq (pa_elf2,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_large-mdpi

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/ainol/elf2/cm.mk)

PRODUCT_NAME := pa_elf2

#GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/common/apk/ParanoidPreferences.apk:system/app/ParanoidPreferences.apk

endif
