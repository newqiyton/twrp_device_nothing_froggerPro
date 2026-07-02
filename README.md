# twrp_device_nothing_froggerPro
TWRP for Nothing phone 4a pro

Recovery tree for the Nothing Phone (4a) Pro, codenamed `froggerPro`.


## Information

Device                  | Nothing Phone (4a)
:-----------------------|:-------------------------------------------
SoC                     | Qualcomm Snapdragon® 7 Gen 4 (SM7750-AB)
Board                   | `I DONT KNOW YET`
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
### Everything else isnt tested because of no touch factor

- [x] Installing and flashing images
    - [x] .zip files (experimental)
    - [ ] .img files (working)
- [ ] Backup and restore
    - [ ] To external/removable devices (e.g. OTG device)
- [x] Built-in features work normally
    - [x] ADB
        - [x] Sideload
    - [x] FastbootD
    - [x] Screen and brightnesss
    - [ ] Touchscreen
    - [ ] Unmount
    - [ ] MTP
    - [ ] Filesystem/Mounts
    - [ ] Slot switch
    - [ ] Haptics
- [ ] Settings persistence
- [x] Data decryption
    - [x] Without a password
    - [ ] With a password
