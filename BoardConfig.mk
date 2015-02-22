#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

LOCAL_PATH := device/motorola/falcon

# Assert
TARGET_OTA_ASSERT_DEVICE := xt1031,xt1032,xt1033,xt1034,falcon_umts,falcon_umtsds,falcon_cdma,falcon_retuaws,falcon,falcon_gpe

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := falcon_defconfig

TARGET_KERNEL_SOURCE := kernel/motorola/msm8226

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_falcon.c
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/extra.fstab:recovery/root/etc/extra.fstab

#TWRP
#TWRP
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_IGNORE_MAJOR_AXIS_0 := true
#Delete TW_INCLUDE_L_CRYPTO := true ?
TW_INCLUDE_L_CRYPTO := true
TW_NO_USB_STORAGE := false
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
HAVE_SELINUX := true

PRODUCT_COPY_FILES += \
 device/motorola/falcon/twrp.fstab:recovery/root/etc/twrp.fstab

#MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/motorola/falcon/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 160
MR_FSTAB := device/motorola/falcon/twrp.fstab
MR_KEXEC_MEM_MIN := 0x05000000
MR_KEXEC_DTB := true
MR_INFOS := device/motorola/falcon/mrom_infos
MR_CONTINUOUS_FB_UPDATE := true

# inherit from the proprietary version
-include vendor/motorola/falcon/BoardConfigVendor.mk
