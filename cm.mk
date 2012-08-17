$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherrit CDMA apns
$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/htc/jewel/jewel.mk)

# Device naming
PRODUCT_DEVICE := jewel
PRODUCT_NAME := cm_jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=IML74K BUILD_FINGERPRINT=sprint_wwe/jewel/jewel:4.0.3/IML74K/78702.3:user/release-keys PRIVATE_BUILD_DESC="1.22.651.3 CL78702 release-keys"

# Release name
PRODUCT_RELEASE_NAME := jewel
-include vendor/cm/config/common_versions.mk
