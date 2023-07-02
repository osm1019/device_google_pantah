# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440x2880

WITH_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TENSOR_PIXEL2 := true



$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
include device/google/pantah/device-aosp.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cherish_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
