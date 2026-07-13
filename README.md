# twrp_device_nothing_froggerPro
TWRP for Nothing phone 4a pro

Recovery tree for the Nothing Phone (4a) Pro, codenamed `froggerPro`.


## Information

Device                  | Nothing Phone (4a)
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

### Functionality according to twrp FAQ

Blocking checks
- [x] Correct screen/recovery size
- [x] Working Touch, screen
- [ ] Backup to internal/microSD
- [ ] Restore from internal/microSD
- [x] reboot to system
- [x] ADB

Medium checks
- [x] update.zip sideload
- [x] UI colors (red/blue inversions)
- [x] Screen goes off and on
- [x] F2FS/EXT4 Support, exFAT/NTFS where supported
- [x] all important partitions listed in mount/backup lists
- [ ] backup/restore to/from external (USB-OTG) storage (not supported by the device)
- [ ] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ ] decrypt /data
- [ ] Correct date

Minor checks
- [ ] MTP export
- [x] reboot to bootloader
- [x] reboot to recovery
- [x] poweroff
- [ ] battery level
- [x] temperature
- [ ] encrypted backups
- [ ] input devices via USB (USB-OTG) - keyboard, mouse and disks (not supported by the device)
- [ ] USB mass storage export
- [x] set brightness
- [ ] vibrate
- [ ] screenshot
- [ ] partition SD card
