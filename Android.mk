#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),amber)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Creating Vendor Symlinks
VENDOR_SYMLINKS := \
    $(TARGET_OUT_VENDOR)/lib \
    $(TARGET_OUT_VENDOR)/lib64 \
    $(TARGET_OUT_VENDOR)/lib/hw \
    $(TARGET_OUT_VENDOR)/lib64/hw \
    $(TARGET_OUT_VENDOR)/lib/egl \
    $(TARGET_OUT_VENDOR)/lib64/egl

$(VENDOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)

	$(hide) echo "Making Vendor Symlinks"

	@mkdir -p $(TARGET_OUT_VENDOR)/lib/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/egl
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/egl

	@ln -sf mt6893/libpq_prot.so $(TARGET_OUT_VENDOR)/lib/libpq_prot.so
	@ln -sf mt6893/libpq_prot.so $(TARGET_OUT_VENDOR)/lib64/libpq_prot.so
	@ln -sf mt6893/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib/egl/libGLES_mali.so
	@ln -sf mt6893/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib64/egl/libGLES_mali.so
	@ln -sf mt6893/arm.graphics-V1-ndk_platform.so $(TARGET_OUT_VENDOR)/lib/arm.graphics-V1-ndk_platform.so
	@ln -sf mt6893/arm.graphics-V1-ndk_platform.so $(TARGET_OUT_VENDOR)/lib64/arm.graphics-V1-ndk_platform.so
	@ln -sf mt6893/vulkan.mali.so $(TARGET_OUT_VENDOR)/lib/hw/vulkan.mali.so
	@ln -sf mt6893/vulkan.mali.so $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.mali.so
	@ln -sf mt6893/android.hardware.graphics.allocator@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	@ln -sf mt6893/android.hardware.graphics.allocator@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib64/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	@ln -sf mt6893/android.hardware.graphics.mapper@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so
	@ln -sf mt6893/android.hardware.graphics.mapper@4.0-impl-mediatek.so $(TARGET_OUT_VENDOR)/lib64/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so

	$(hide) touch $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENDOR_SYMLINKS)

endif
