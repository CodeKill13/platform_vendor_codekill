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

# Inherit AOSP device configuration for GS3 TMO.
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := codekill_endeavoru
PRODUCT_DEVICE := endeavoru
PRODUCT_BRAND := htc_europe
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC ONE X


#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru TARGET_DEVICE=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.31:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.31 CL128187 release-keys"