SUPERUSER_EMBEDDED := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/dictionaries

PRODUCT_PACKAGES += \
    BluetoothExt \
    CellBroadcastReceiver \
    mGerrit \
    ROMControl \
    Stk \
    Superuser \
    su \
    Torch \

# Extra Optional packages
PRODUCT_PACKAGES += \
    NovaLauncher \
    DashClock \
    Firewall \
    Halo \
    HostsFileManager \
    LockClock \
    PerformanceControl \
    RootExplorer

# Apollo & DSPManager
PRODUCT_PACKAGES += \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Host files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/hosts.alt:system/etc/hosts.alt \
    vendor/aokp/prebuilt/common/etc/hosts.og:system/etc/hosts.og

# Copy phoneloc files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/lib/libphoneloc-jni.so:system/lib/libphoneloc-jni.so \
    vendor/aokp/prebuilt/common/usr/share/phoneloc.dat:system/usr/share/phoneloc.dat

# Copy phoneloc files
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/LatinIME.apk:system/app/LatinIME.apk \
    vendor/aokp/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Terminal
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/Term.apk:system/app/Term.apk \
    vendor/aokp/prebuilt/common/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so 

# Enable Xbox 360 and Ps3 Controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl \
    frameworks/base/data/keyboards/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/aokp/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/aokp/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/aokp/prebuilt/common/xbin/sysrw:system/xbin/sysrw

# SuperSU 1.65
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aokp/prebuilt/common/bin/chattr:system/bin/chattr \
    vendor/aokp/prebuilt/common/etc/init.d/01SuperUser:system/etc/init.d \
    vendor/aokp/prebuilt/common/etc/init.d/99SuperSUDaemon:system/init.d/99SuperSUDaemon \
    vendor/aokp/prebuilt/common/etc/install-recovery.sh:system/etc/install-recovery.sh \
    vendor/aokp/prebuilt/common/xbin/su:system/xbin/su

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
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

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
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    sftp \
    scp \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/aokp/configs/themes_common.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# World APNs
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
