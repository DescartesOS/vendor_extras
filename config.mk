#
# Copyright (C) 2018 The LineageOS Project
#               2017-2024 crDroid Android Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

ifneq ($(WITH_GMS),true)
    PRODUCT_COPY_FILES += \
        vendor/extras/product/etc/sysconfig/ambient_data.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/ambient_data.xml \
        vendor/extras/product/etc/sysconfig/contextual_search.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/contextual_search.xml \
        vendor/extras/product/etc/sysconfig/dialer_experience.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/dialer_experience.xml \
        vendor/extras/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
        vendor/extras/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
        vendor/extras/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
        vendor/extras/product/etc/sysconfig/google-initial-package-stopped-states.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-initial-package-stopped-states.xml \
        vendor/extras/product/etc/sysconfig/nexus.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nexus.xml \
        vendor/extras/product/etc/sysconfig/nga.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nga.xml \
        vendor/extras/product/etc/sysconfig/pixel_2017-initial-package-stopped-states.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2017-initial-package-stopped-states.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2017-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2017-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2018-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2018-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2019-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2019-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2022-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2022-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2023-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2023-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled-packages-product-pixel-2024-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2024-and-newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled_packages_pixel_experience_2017_and_newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled_packages_pixel_experience_2017_and_newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled_packages_pixel_experience_2021_and_newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled_packages_pixel_experience_2021_and_newer.xml \
        vendor/extras/product/etc/sysconfig/preinstalled_packages_repair_mode.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled_packages_repair_mode.xml
endif

# Overlays
PRODUCT_PACKAGES += \
    ImmersiveNavigationOverlay \
    QSMedia

# Icon shapes
PRODUCT_PACKAGES += \
    IconShapeArchOverlay \
    IconShapeCloudyOverlay \
    IconShapeCylinderOverlay \
    IconShapeFlowerOverlay \
    IconShapeFourSidedCookieOverlay \
    IconShapeHeartOverlay \
    IconShapeHexagonOverlay \
    IconShapeIosOverlay \
    IconShapeLeafOverlay \
    IconShapeMeowOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedHexagonOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSamsungOverlay \
    IconShapeScrollOverlay \
    IconShapeSevenSidedCookieOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeStretchedOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay

# Apps
PRODUCT_PACKAGES += \
    NOSAtmosphereEffect \
    ScreenshotEditor \
    SwitchSmile

# UI sounds
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/extras/prebuilt/product/media/audio/ui,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui)
