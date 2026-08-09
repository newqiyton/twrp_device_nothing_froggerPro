# twrp_device_nothing_froggerPro
TWRP for Nothing phone 4a pro

Recovery tree for the Nothing Phone (4a) Pro, codenamed `froggerPro`.


## Information

Device                  | Nothing Phone (4a) Pro
:-----------------------|:-------------------------------------------
SoC                     | Qualcomm Snapdragon® 7 Gen 4 (SM7750-AB)
Board                   | sun
CPU                     | Octa-core (1x2.8 GHz Cortex-720 & 4x2.4 GHz Cortex-720 & 3x1.8 GHz Cortex-520)
GPU                     | Adreno 722
Memory                  | 8/12 GB RAM
Shipped Android version | Android 16 (Nothing OS 4.0)
Storage                 | 128/256 GB UFS 3.1
Micro SD                | None
Battery                 | Non-removable 5080 mAh
Dimensions              | 163.7 x 76.6 x 8 mm
Display                 | 6.83 inches, Amoled, 144Hz
Resolution              | 1260 x 2800

Recovery        | TWRP 14.0
:---------------|:---------------------------
Variant         | 6.6
Manifest        | https://github.com/nebrassy/platform_manifest_twrp_aosp.git



> [!NOTE]
> Please don't ask for support until I add it sometime later.

## Checklist

### Functionality

- [x] Installing and flashing images
    - [x] .zip files
    - [x] .img files
- [x] Backup and restore
    - [x] To external/removable devices (e.g. OTG device)
- [x] Built-in features work normally
    - [x] ADB
        - [x] Sideload
    - [x] FastbootD
    - [x] Screen and brightnesss
    - [x] Touchscreen
    - [x] Unmount
    - [x] MTP
    - [x] Filesystem/Mounts
    - [x] Slot switch
    - [x] Haptics
- [x] Settings persistence
- [x] Data decryption
    - [x] Without a password
    - [x] With a password

Thanks to dx4m for providing battery and otg support
