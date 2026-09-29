#!/bin/bash
#
# repack-boot.sh — SamsungToolkitA7
# Reconstruction d’un boot.img pour le Galaxy A7 2018
#

BOOT_DIR="boot-extracted"
NEW_BOOT="new-boot.img"

if [ ! -d "$BOOT_DIR" ]; then
    echo "[!] Dossier $BOOT_DIR introuvable."
    exit 1
fi

echo "[*] Reconstruction du boot.img..."
mkbootimg \
    --kernel "$BOOT_DIR/kernel" \
    --ramdisk "$BOOT_DIR/ramdisk.cpio.gz" \
    --cmdline "androidboot.selinux=enforcing" \
    --base 0x10000000 \
    --pagesize 2048 \
    --output "$NEW_BOOT"

echo "[*] Boot reconstruit : $NEW_BOOT"
