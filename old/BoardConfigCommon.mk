#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# TARGET_BOARD_INFO_FILE ?= device/htc/m8qlul/board-info.txt

BOARD_VENDOR := htc

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8939
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8939
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

# Flags
COMMON_GLOBAL_CFLAGS += -DHTCLOG # (m8)

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 zcache # (m8)
BOARD_KERNEL_BASE := 0x80078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true # (m8)
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000
TARGET_PREBUILT_KERNEL := device/htc/m8qlul/kernel
# (cpt) BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
# (cpt) BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000 --dt device/htc/m8qlul/recovery/dt.img
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_HEADER_SOURCE := kernel/
TARGET_KERNEL_CROSS_COMPILE_PREFIX
TARGET_USES_UNCOMPRESSED_KERNEL

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# TODO: Audio
# TODO: Bluetooth
# TODO: Camera
# TODO: Charge mode
# TODO: Font
# TODO: Graphics
# TODO: Includes
# TODO: Lights
# TODO: NFC
# TODO: Power
# TODO: RIL
# TODO: RPC
# TODO: Time services
# TODO: Wifi

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
# BOARD_RECOVERY_BLDRMSG_OFFSET := 2048 # (m8)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x100000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x268000000
TARGET_USERIMAGES_USE_EXT4 := true # (m8)

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true # (m8)
BOARD_HAS_NO_MISC_PARTITION := false # (me)
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true # (m8)
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\" # (m8)
BOARD_USES_MMCUTILS := true # (m8)
TARGET_RECOVERY_FSTAB := device/htc/m8/rootdir/etc/fstab.qcom # (m8)
TARGET_RECOVERY_PIXEL_FORMAT := "BGR_565" # (me)

# TODO: SELinux
# TODO: Releasetools
# TODO: Hardware

# Inherit from the proprietary version
-include vendor/htc/m8qlul/BoardConfigVendor.mk
