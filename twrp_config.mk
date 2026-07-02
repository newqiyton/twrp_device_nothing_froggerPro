# ------------------
# TWRP Configuration
# ------------------

# Display
TARGET_SCREEN_DENSITY := 440
TARGET_SCREEN_HEIGHT := 2800
TARGET_SCREEN_WIDTH := 1260

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_INPUT_DEVICES := false
TW_INPUT_BLACKLIST := "null"

TW_MAX_BRIGHTNESS := 1557

TW_DEFAULT_LANGUAGE     := en
TW_USE_TOOLBOX          := true
TW_INCLUDE_NTFS_3G      := true
TW_INCLUDE_FUSE_EXFAT   := true
TW_INCLUDE_FUSE_NTFS    := true
TW_INCLUDE_REPACKTOOLS  := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP    := true
TW_EXTRA_LANGUAGES      := true
TW_EXCLUDE_APEX         := true
TW_INCLUDE_FASTBOOTD    := true

# Haptics / Vibration
TW_SUPPORT_INPUT_1_2 := true
TW_USE_LEDS_HAPTICS := true

# Change clock position so camera wont close up the clock
TW_CUSTOM_CLOCK_POS := "590"

# CPU Temperature
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone16/temp

# Battery
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/battery"
HEALTHD_USE_BATTERY_INFO := true

# USB
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true

# Little hack (some reason libhardware.so isn't ending up compiled)
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service\
    libdmabufheap \
    libhidlmemory \
    libhardware \
    libion \
    libnetutils \
    vendor.display.config@1.0 \
    vendor.display.config@2.0 \
    android.hardware.vibrator-service.nothing\
    libdebuggerd_client

TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.product;ro.build.fingerprint=ro.vendor.build.fingerprint;ro.build.version.incremental"
TW_OVERRIDE_PROPS_ADDITIONAL_PARTITIONS := vendor
RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.allocator@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdebuggerd_client.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so

# Custom refresh rate
TW_FRAMERATE := 144

# Include EDL mode
TW_HAS_EDL_MODE := true

# Encryption (Disabled for testing)
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_FBE := true
#TW_INCLUDE_FBE_METADATA_DECRYPT := true
#TW_INCLUDE_OMAPI := true

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
TARGET_RECOVERY_DEVICE_MODULES += strace
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/strace
