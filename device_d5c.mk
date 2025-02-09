#
# Copyright (C) 2013 The CyanogenMod Project
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
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/smartfren/msm8x25q_d5c

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    $(LOCAL_PATH)/config/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/config/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \
    $(LOCAL_PATH)/config/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio_policy.conf_fm:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml

# INIT.D Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.d/sqlite3:system/xbin/sqlite3 \
    $(LOCAL_PATH)/config/init.d/zipalign:system/xbin/zipalign \
    $(LOCAL_PATH)/config/init.d/91zipalign:system/etc/init.d/91zipalign \
    $(LOCAL_PATH)/config/init.d/sqlite_optimize:system/etc/init.d/sqlite_optimize \
    $(LOCAL_PATH)/config/init.d/03battery_life:system/etc/init.d/03battery_life \
    $(LOCAL_PATH)/config/init.d/sysinit:system/bin/sysinit

# Camera
# TODO find good sources for these and build them
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/lib/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
	$(LOCAL_PATH)/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
	$(LOCAL_PATH)/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
	$(LOCAL_PATH)/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
	$(LOCAL_PATH)/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
	$(LOCAL_PATH)/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
	$(LOCAL_PATH)/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
	$(LOCAL_PATH)/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
	$(LOCAL_PATH)/lib/liboemcamera.so:system/lib/liboemcamera.so


# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    init.target.rc \
    init.qcom.ril.sh \
    rmt_storage_recovery \
    init.recovery.qcom.rc

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a \
    hwcomposer.msm7x27a

# Wal
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    vee7_keypad \
    7k_handset.kl \

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

# gps hal
PRODUCT_PACKAGES += \
    gps.msm7x27a


# light hal
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libnl_2

PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Color Convert
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libc2dcolorconvert

# Omx
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    qcmediaplayer

# stagefright cmdline tools
PRODUCT_PACKAGES += \
    stagefright \
    record \
    recordvideo \
    audioloop \
    stream \
    sf2 \
    codec \
    muxer

# Camera Hal
PRODUCT_PACKAGES += \
   camera.msm7x27a

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a

# Enable Torch
PRODUCT_PACKAGES += Torch

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

# FM Radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
	$(LOCAL_PATH)/rootdir/rmt_storage_recovery:root/rmt_storage_recovery\
	$(LOCAL_PATH)/rootdir/nv_set:root/nv_set \
	$(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc


# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    headset.hook.delay=500

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240 \
    ro.sys.fw.bg_apps_limit=20
    debug.gr.numframebuffers=3 \
    ro.bq.gpu_to_cpu_unsupported=1

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=256m \
    ro.config.low_ram=false \
    ro.ksm.default=1 \

PRODUCT_PROPERTY_OVERRIDES += \
   media.stagefright.enable-player=true \
   media.stagefright.enable-meta=false \
   media.stagefright.enable-scan=true \
   media.stagefright.enable-http=true \
   media.stagefright.enable-fma2dp=true \
   media.stagefright.enable-aac=true \
   media.stagefright.enable-qcp=true

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    ro.telephony.call_ring.delay=3000 \
    ro.telephony.call_ring.multiple=false \
    com.qc.hardware=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

PRODUCT_PROPERTY_OVERRIDES += \
   ro.use_data_netmgrd=true

$(call inherit-product-if-exists, vendor/smartfren/msm8x25q_d5c/msm8x25q_d5c-vendor.mk)

PRODUCT_MANUFACTURER := Woland
PRODUCT_BRAND := Kruger&Matz
