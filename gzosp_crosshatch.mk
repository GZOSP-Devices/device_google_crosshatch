# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Gzosp stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-gzosp.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 11 RQ1A.201205.008 6943376 release-keys"

BUILD_FINGERPRINT := "google/crosshatch/crosshatch:11/RQ1A.201205.008/6943376:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/crosshatch/crosshatch:11/RQ1A.201205.008/6943376:user/release-keys

$(call inherit-product-if-exists, vendor/google/crosshatch/crosshatch-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
