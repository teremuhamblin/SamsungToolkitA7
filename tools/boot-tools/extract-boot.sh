#!/bin/bash
#
# extract-boot.sh — SamsungToolkitA7
# Extraction du boot.img pour analyse
#

BOOT_IMG="$1"

if [ -z "$BOOT_IMG" ]; then
    echo "[!] Usage : ./extract-boot.sh boot.img"
    exit 1
fi

mkdir -p boot-extracted

echo "[*] Extraction du boot.img..."
unmkbootimg --input "$BOOT_IMG" --out boot-extracted/

echo "[*] Extraction terminée."
echo "Contenu disponible dans boot-extracted/"
