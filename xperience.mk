$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/xperience/config/common_mini_phone.mk)

#CAF prop CAF includes
include device/qcom/common/common.mk
DISABLE_EAP_PROXY := true

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := xperience_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola
