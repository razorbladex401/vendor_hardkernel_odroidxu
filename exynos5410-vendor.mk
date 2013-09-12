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
