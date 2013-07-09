# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# Optional CM packages
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/dictionaries

# Superuser
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    Apollo \
    Chronus \
    DSPManager \
    DashClock \
    HALO \
    libcyanogen-dsp \
    audio_effects.conf \
    LatinImeDictionaryPack \
    LockClock \
    mGerrit \
    Microbes \
    PermissionsManager \
    ROMControl \
    RootExplorer \
    Superuser \
    su \
    SwagPapers \
    Torch \
    UnicornPorn

#    PerformanceControl \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

# Installer
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/aokp/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aokp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# Compcache
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/aokp/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/aokp/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions

# init.d
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/aokp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/aokp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aokp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    e2fsck \
    fsck.exfat \
    libssh \
    mke2fs \
    mkfs.exfat \
    mount.exfat \
    ntfsfix \
    ntfs-3g \
    openvpn \
    scp \
    sftp \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    tune2fs

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

# DPI Per APP
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/dpi/xhdpi.conf:system/etc/burstlam/properties.conf

# Enable Xbox 360 and Ps3 Controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl \
    frameworks/base/data/keyboards/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl

# Mokee PhoneLoc
PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/mokee-phoneloc.dat:system/etc/phoneloc.dat

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/aokp/configs/themes_common.mk
