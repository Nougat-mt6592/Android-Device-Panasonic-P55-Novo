$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, $(VENDOR_PATH)/vendor.mk)

PRODUCT_CHARACTERISTICS := default

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_TAGS += dalvik.gc.type-precise

# Symbols
PRODUCT_PACKAGES += libmtk_symbols

# Memtrack
PRODUCT_PACKAGES += memtrack.mt6592

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6592 \
    audio_policy.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# GSM
PRODUCT_COPY_FILES += \
     $(DEVICE_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# Bluetooth
PRODUCT_PACKAGES += libbt-vendor

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(DEVICE_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(DEVICE_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# GPS
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Rootdir
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(DEVICE_PATH)/rootdir/fstab.mt6592:root/fstab.mt6592 \
    $(DEVICE_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_PATH)/rootdir/init.mt6592.rc:root/init.mt6592.rc \
    $(DEVICE_PATH)/rootdir/init.mt6592.usb.rc:root/init.mt6592.usb.rc \
    $(DEVICE_PATH)/rootdir/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
    $(DEVICE_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(DEVICE_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(DEVICE_PATH)/rootdir/sbin/poweroff.sh:recovery/root/sbin/poweroff.sh \
    $(DEVICE_PATH)/rootdir/sbin/rebootrecovery.sh:recovery/root/sbin/rebootrecovery.sh \
    $(DEVICE_PATH)/rootdir/sbin/rebootsystem.sh:recovery/root/sbin/rebootsystem.sh \
    $(LOCAL_KERNEL):kernel

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(DEVICE_PATH)/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(DEVICE_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Camera app
PRODUCT_PACKAGES += Snap

 # Charger
  PRODUCT_PACKAGES += \
    charger_res_images

# FM Radio app
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Substratum
PRODUCT_PACKAGES += \
    ThemeInterfacer
    
# Media codecs
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video.xml \
    $(DEVICE_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml	

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
