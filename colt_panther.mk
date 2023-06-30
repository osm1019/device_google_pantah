# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080x2280

WITH_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

COLT_BUILD_MAINTAINER := Omariscal1019
COLT_BUILD_TYPE := Official

$(call inherit-product, vendor/colt/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
include device/google/pantah/device-aosp.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ2A.230505.002 9891397 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
