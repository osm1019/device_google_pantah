# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

TARGET_IS_PIXEL := true
TARGET_FLATTEN_APEX := false
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_USE_GOOGLE_TELEPHONY := true
# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit common CherishOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
EXTRA_UDFPS_ANIMATIONS := true
#TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
include device/google/pantah/device-aosp.mk

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
#$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ2A.230305.008.C1 9619669 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
