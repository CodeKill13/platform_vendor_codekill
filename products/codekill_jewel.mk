#Squisher Choosing
DHO_VENDOR := codekill

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 


# Inherit common phone stuff
$(call inherit-product, vendor/codekill/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/codekill/products/cdma.mk)
$(call inherit-product, vendor/codekill/products/beats.mk)

# Vanir Product Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/codekill/overlay/cdma_phone \
    vendor/codekill/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip 

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/htc/jewel/jewel.mk)

#... and then make the AOSP device configuration for Jewel get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := codekill_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO 4G LTE
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=JLS36C BUILD_FINGERPRINT="htc/jewel/jewel:4.3/JLS36C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"
