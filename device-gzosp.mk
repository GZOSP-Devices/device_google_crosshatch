# Context Hub Runtime Environment
PRODUCT_PACKAGES += \
    chre

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/crosshatch/overlay-gzosp

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libprotobuf-cpp-full-vendorcompat \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal:64 \
    libwifi-hal-qcom
