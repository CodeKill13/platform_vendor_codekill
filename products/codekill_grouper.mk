#Squisher Choosing
DHO_VENDOR := codekill

KERNEL_SPAM := Faux Kernel v013u IN THE H1ZNOUSE

PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapersPicker



# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/codekill/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/codekill/products/common_tabs.mk)
$(call inherit-product, vendor/codekill/products/beats.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Setup device specific product configuration.
PRODUCT_NAME := codekill_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JLS36C/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JLS36C 737497 release-keys"
