# Product version should match Android version
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 0

CR_VERSION := OREO

LINEAGE_VERSION := cleanos-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(LINEAGE_BUILD)-$(CR_VERSION)
LINEAGE_DISPLAY_VERSION := cleanos-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(CR_VERSION)

# Do not edit. These values are parsed by OTA and Settings.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crdroid.build.version=$(LINEAGE_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CR_VERSION)

# Additional props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.com.google.ime.theme_id=5 \
    ro.storage_manager.enabled=1 \
    ro.opa.eligible_device=true \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    keyguard.no_require_sim=true \
    persist.sys.disable_rescue=true

# Temporary props for bring ups
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb

EXCLUDE_SYSTEMUI_TESTS := true
