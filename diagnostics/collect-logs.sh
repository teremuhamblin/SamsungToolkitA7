#!/bin/bash
#
# collect-logs.sh — SamsungToolkitA7
# Collecte complète des logs du Galaxy A7 2018 (SM-A750FN/DS)
#

OUTPUT_DIR="logs-collect"
mkdir -p "$OUTPUT_DIR"

echo "[*] Collecte des logs en cours..."

echo "[*] logcat..."
adb logcat -d > "$OUTPUT_DIR/logcat.txt"

echo "[*] dmesg..."
adb shell dmesg > "$OUTPUT_DIR/dmesg.txt"

echo "[*] events..."
adb shell logcat -b events -d > "$OUTPUT_DIR/events.txt"

echo "[*] radio..."
adb shell logcat -b radio -d > "$OUTPUT_DIR/radio.txt"

echo "[*] kernel messages..."
adb shell su -c "cat /proc/kmsg" > "$OUTPUT_DIR/kmsg.txt" 2>/dev/null

echo "[*] Propriétés système..."
adb shell getprop > "$OUTPUT_DIR/getprop.txt"

echo "[*] Collecte terminée."
echo "Fichiers disponibles dans : $OUTPUT_DIR/"
