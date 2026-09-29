#!/bin/bash
#
# check-partitions.sh — SamsungToolkitA7
# Vérification rapide des partitions du Galaxy A7 2018
#

echo "[*] Vérification des partitions..."

for PART in boot recovery system vendor product odm efs userdata; do
    echo -n "[*] $PART : "
    adb shell su -c "ls -l /dev/block/by-name/$PART" || echo "ERREUR"
done

echo "[*] Vérification terminée."
