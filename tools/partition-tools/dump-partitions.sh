#!/bin/bash
#
# dump-partitions.sh — SamsungToolkitA7
# Dump complet des partitions du Galaxy A7 2018 (SM-A750FN/DS)
#

OUTPUT_DIR="partition-dump"
mkdir -p "$OUTPUT_DIR"

echo "[*] Dump des partitions en cours..."

for PART in boot recovery system vendor product odm efs userdata; do
    echo "[*] Dump de $PART..."
    adb shell su -c "dd if=/dev/block/by-name/$PART" > "$OUTPUT_DIR/$PART.img"
done

echo "[*] Dump terminé."
echo "Fichiers disponibles dans : $OUTPUT_DIR/"
