
# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# F2FS
PRODUCT_PACKAGES += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

BOARD_USES_QCOM_FBE_DECRYPTION  := true

TARGET_RECOVERY_QCOM_RTC_FIX := true

# Vibrator
PRODUCT_COPY_FILES += \
    vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root/,$(TARGET_COPY_OUT_RECOVERY)/root/)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/qcom/opensource/commonsys-intf/display

PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true

# API levels
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34
BOARD_SHIPPING_API_LEVEL := 34
SHIPPING_API_LEVEL := 34

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display \
    hardware/google/interfaces \
    hardware/google/pixel


PRODUCT_APEX_SYSTEM_SERVER_JARS += com.android.crashrecovery:service-crashrecovery

# Define the local prebuilt directory path
PREBUILT_LIB_PATH := $(DEVICE_PATH)/prebuilt/lib

# Copy vold dependencies
PRODUCT_COPY_FILES += \
    $(PREBUILT_LIB_PATH)/android.hardware.boot@1.1.so:recovery/root/system/lib64/android.hardware.boot@1.1.so \
    $(PREBUILT_LIB_PATH)/android.hardware.boot-V1-ndk.so:recovery/root/system/lib64/android.hardware.boot-V1-ndk.so \
    $(PREBUILT_LIB_PATH)/android.system.keystore2-V5-ndk.so:recovery/root/system/lib64/android.system.keystore2-V5-ndk.so \
    $(PREBUILT_LIB_PATH)/libbase.so:recovery/root/system/lib64/android.system.keystore2-V5-ndk.so \
    $(PREBUILT_LIB_PATH)/libbinder.so:recovery/root/system/lib64/libbinder.so \
    $(PREBUILT_LIB_PATH)/libbinder_ndk.so:recovery/root/system/lib64/libbinder_ndk.so \
    $(PREBUILT_LIB_PATH)/libboot_control_client.so:recovery/root/system/lib64/libboot_control_client.so \
    $(PREBUILT_LIB_PATH)/libcryptfs_hw.so:recovery/root/system/lib64/libcryptfs_hw.so \
    $(PREBUILT_LIB_PATH)/libcrypto.so:recovery/root/system/lib64/libcrypto.so \
    $(PREBUILT_LIB_PATH)/libcrypto_utils.so:recovery/root/system/lib64/libcrypto_utils.so \
    $(PREBUILT_LIB_PATH)/libcutils.so:recovery/root/system/lib64/libcutils.so \
    $(PREBUILT_LIB_PATH)/libext4_utils.so:recovery/root/system/lib64/libext4_utils.so \
    $(PREBUILT_LIB_PATH)/libgsi.so:recovery/root/system/lib64/libgsi.so \
    $(PREBUILT_LIB_PATH)/libhardware.so:recovery/root/system/lib64/libhardware.so \
    $(PREBUILT_LIB_PATH)/libhardware_legacy.so:recovery/root/system/lib64/libhardware_legacy.so \
    $(PREBUILT_LIB_PATH)/libhidlbase.so:recovery/root/system/lib64/libhidlbase.so \
    $(PREBUILT_LIB_PATH)/libincfs.so:recovery/root/system/lib64/libincfs.so \
    $(PREBUILT_LIB_PATH)/libkeymint_support.so:recovery/root/system/lib64/libkeymint_support.so \
    $(PREBUILT_LIB_PATH)/liblogwrap.so:recovery/root/system/lib64/liblogwrap.so \
    $(PREBUILT_LIB_PATH)/libsysutils.so:recovery/root/system/lib64/libsysutils.so \
    $(PREBUILT_LIB_PATH)/libutils.so:recovery/root/system/lib64/libutils.so \
    $(PREBUILT_LIB_PATH)/android.hardware.security.keymint-V4-ndk.so:recovery/root/system/lib64/android.hardware.security.keymint-V4-ndk.so

