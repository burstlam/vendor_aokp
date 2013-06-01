# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date -u +%Y%m%d)
AOKP_BRANCH=JB-MR1

ifneq ($(AOKP_BUILD),)
	# AOKP_BUILD=<goo version int>/<build string>
	PRODUCT_PROPERTY_OVERRIDES += \
	    ro.goo.developerid=aokp \
	    ro.goo.rom=aokp \
	    ro.goo.version=$(shell echo $(AOKP_BUILD) | cut -d/ -f1) \
		ro.aokp.version=AOKP-$(AOKP_BRANCH)-MAGURO-$(DATE)-Burst-Kernel-KANG
else
	PRODUCT_PROPERTY_OVERRIDES += \
		ro.aokp.version=AOKP-$(AOKP_BRANCH)-MAGURO-$(DATE)-Burst-Kernel-KANG
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.aokp.branch=$(AOKP_BRANCH) \
        ro.aokp.device=$(AOKP_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
