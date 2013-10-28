SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/dictionaries

PRODUCT_PACKAGES += \
    About \
    Apollo \
    AppWidgetPicker \
    audio_effects.conf \
    BluetoothExt \
    CellBroadcastReceiver \
    CMFileManager \
    CMWimaxSettings \
    BlueBalls \
    DashClock \
    DirtWalls \
    DSPManager \
    DUChangelog \
    DU-Stats \
    DU-Updater \
    EVWidgets \
    HALO \
    HostsFileManager \
    LatinImeDictionaryPack \
    LockClock \
    libcyanogen-dsp \
    Microbes \
    PerformanceControl \
    PhaseBeam \
    ROMControl \
    SoundRecorder \
    Stk \
    Superuser \
    su \
    Torch \
    Trebuchet

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
    ro.ril.enable.amr.wideband=1 \
    ro.build.selinux=1 \
    ro.adb.secure=0 \
    persist.sys.root_access=3

# Installer
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/du/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/du/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# Copy DU Host File
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/hosts.alt:system/etc/hosts.alt \
    vendor/du/prebuilt/common/etc/hosts.og:system/etc/hosts.og

# init.d
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/init.local.rc:root/init.du.rc \
    vendor/du/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/du/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/du/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/du/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/du/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/du/configs/themes_common.mk

# World APNs
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
    
#DUStats
PRODUCT_PROPERTY_OVERRIDES += \
ro.romstats.url=http://stats.dirtyunicorns.com/ \
ro.romstats.name=DirtyUnicorns \
ro.romstats.version=3.9 \
ro.romstats.tframe=3

# DU OTA
PRODUCT_PROPERTY_OVERRIDES += \
	ro.du.buildnum=1

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
    vendor/du/proprietary/Term.apk:system/app/Term.apk \
    vendor/du/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so
