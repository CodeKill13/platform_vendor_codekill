#Squisher Choosing
DHO_VENDOR := codekill

KERNEL_SPAM := CM-AOSP 3.4.0-g8e41961


# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/codekill/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/codekill/products/common_tabs.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/flo/full_flo.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Setup device specific product configuration.
PRODUCT_NAME := codekill_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor TARGET_DEVICE=flo BUILD_FINGERPRINT=google/razor/flo:4.3/JLS36C/748593:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.3 JLS36C 748593 release-keys"