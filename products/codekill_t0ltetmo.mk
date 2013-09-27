#Squisher Choosing
DHO_VENDOR := codekill

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true 
   

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/codekill/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# GSM APNs and Simcard app
$(call inherit-product, vendor/codekill/products/gsm.mk)

# Inherit AOSP device configuration for Note 2.
$(call inherit-product, device/samsung/t0ltetmo/full_t0ltetmo.mk)

# Setup device specific product configuration.
PRODUCT_NAME := codekill_t0ltetmo
PRODUCT_DEVICE := t0ltetmo
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-T889

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltetmo BUILD_FINGERPRINT="samsung/t0ltetmo/t0ltetmo:4.3/JLS36C/737497:user/release-keys" PRIVATE_BUILD_DESC="t0ltetmo-user 4.3 JLS36C 737497 release-keys"