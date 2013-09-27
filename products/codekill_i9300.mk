#Squisher Choosing
DHO_VENDOR := codekill

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 


# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/codekill/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/codekill/products/gsm.mk)
$(call inherit-product, vendor/codekill/products/beats.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# This needs update
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# Inherit AOSP device configuration for GS3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := codekill_i9300
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9300

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JLS36C/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.3 JLS36C I9300XXDLIB release-keys"