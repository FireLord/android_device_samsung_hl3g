# Inherit device configuration
$(call inherit-product, device/samsung/hl3g/full_hl3g.mk)
$(call inherit-product, device/samsung/smdk5260-common/device-common.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/bliss/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := hl3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Nfc
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Override build properties.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hl3gxx \
    TARGET_DEVICE=hl3g \
    BUILD_FINGERPRINT="samsung/hl3gxx/hl3g:5.1.1/LMY47X/N750XXUDPA1:user/release-keys" \
    PRIVATE_BUILD_DESC="hl3gxx-user 5.1.1 LMY47X N750XXUDPA1 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hl3g
PRODUCT_NAME := bliss_hl3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N750
PRODUCT_MANUFACTURER := samsung
