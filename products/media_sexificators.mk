PRODUCT_PACKAGES += \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp

ifneq ($(NO_DRM_BLOBS),true)
# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/codekill/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/codekill/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/codekill/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/codekill/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so
endif

# Bravia 3 engine, credit C0deF0x
PRODUCT_COPY_FILES += \
    vendor/codekill/proprietary/bravia/etc/be_movie:system/etc/be_movie \
    vendor/codekill/proprietary/bravia/etc/be_photo:system/etc/be_photo \
    vendor/codekill/proprietary/bravia/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/codekill/proprietary/bravia/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.swiqi3.enable=1 \
    ro.service.swiqi3.supported=true \
    persist.service.swiqi.enable=1 \
    ro.service.swiqi.supported=true
