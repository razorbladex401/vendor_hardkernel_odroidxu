#
# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http:/www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_PACKAGES := \
	mfc_fw.bin \
	fimc_is_fw2.bin \
	setfile_imx135.bin \
	setfile_6b2.bin \
	srp_cga.bin \
	srp_data.bin \
	srp_vliw.bin
# init.d support
PRODUCT_COPY_FILES += \
	vendor/hardkernel/odroidxu/proprietary/bin/sysinit:system/bin/sysinit

# Input device calibration files
PRODUCT_COPY_FILES += \
	vendor/hardkernel/odroidxu/proprietary/bin/odroid-ts.idc:system/usr/idc/odroidxu-ts.idc \
	vendor/hardkernel/odroidxu/proprietary/bin/odroid-ts.kl:system/usr/keylayout/odroidxu-ts.kl \
	vendor/hardkernel/odroidxu/proprietary/bin/odroid-ts.kcm:system/usr/keylayout/odroidxu-ts.kcm \
	vendor/hardkernel/odroidxu/proprietary/bin/odroid-keypad.kl:system/usr/keylayout/odroidxu-keypad.kl \
	vendor/hardkernel/odroidxu/proprietary/bin/odroid-keypad.kcm:system/usr/keychars/odroidxu-keypad.kcm
# XBox 360 Controller kl keymaps
PRODUCT_COPY_FILES += \
	vendor/hardkernel/odroidxu/proprietary/usr/Vendor_045e_Product_0291.kl:system/usr/keylayout/Vendor_045e_Product_0291.kl \
	vendor/hardkernel/odroidxu/proprietary/usr/Vendor_045e_Product_0719.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl \
	vendor/hardkernel/odroidxu/proprietary/usr/Vendor_045e_Product_0719.kcm:system/usr/keychars/Vendor_045e_Product_0719.kcm

#PRODUCT_COPY_FILES += \
#	vendor/hardkernel/odroidxu/proprietary/app/Ultra_Explorer.apk:system/app/Ultra_Explorer.apk \
#	vendor/hardkernel/odroidxu/proprietary/app/jackpal.androidterm.apk:system/app/jackpal.androidterm.apk \
#	vendor/hardkernel/odroidxu/proprietary/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

#PRODUCT_COPY_FILES += \
#	vendor/hardkernel/odroidxu/proprietary/app/DicePlayer.apk:system/app/DicePlayer.apk \
#	vendor/hardkernel/odroidxu/proprietary/lib/libSoundTouch.so:system/lib/libSoundTouch.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libdice_jb.so:system/lib/libdice_jb.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libdice_jb2.so:system/lib/libdice_jb2.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libdice_loadlibrary.so:system/lib/libdice_loadlibrary.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libdice_software.so:system/lib/libdice_software.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libdice_software_jb.so:system/lib/libdice_software_jb.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libffmpeg_dice.so:system/lib/libffmpeg_dice.so \
#	vendor/hardkernel/odroidxu/proprietary/lib/libsonic.so:system/lib/libsonic.so

ifeq ($(BOARD_USES_HGL),true)
PRODUCT_COPY_FILES += \
        vendor/hardkernel/odroidxu/lib/hw/gralloc.exynos5410.so:system/lib/hw/gralloc.exynos5.so \
        vendor/hardkernel/odroidxu/lib/egl/libEGL_POWERVR_SGX544_115.so:system/lib/egl/libEGL_POWERVR_SGX544_115.so \
        vendor/hardkernel/odroidxu/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so \
        vendor/hardkernel/odroidxu/lib/egl/libGLESv2_POWERVR_SGX544_115.so:system/lib/egl/libGLESv2_POWERVR_SGX544_115.so \
        vendor/hardkernel/odroidxu/lib/libsrv_um.so:system/lib/libsrv_um.so \
        vendor/hardkernel/odroidxu/lib/libusc.so:system/lib/libusc.so \
        vendor/hardkernel/odroidxu/lib/libsrv_init.so:system/lib/libsrv_init.so \
        vendor/hardkernel/odroidxu/lib/libIMGegl.so:system/lib/libIMGegl.so \
        vendor/hardkernel/odroidxu/lib/libpvr2d.so:system/lib/libpvr2d.so \
        vendor/hardkernel/odroidxu/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
        vendor/hardkernel/odroidxu/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
        vendor/hardkernel/odroidxu/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
        vendor/hardkernel/odroidxu/bin/pvrsrvctl:system/bin/pvrsrvctl \
        vendor/hardkernel/odroidxu/lib/libPVROCL.so:system/lib/libPVROCL.so \
        vendor/hardkernel/odroidxu/lib/liboclcompiler.so:system/lib/liboclcompiler.so
endif
