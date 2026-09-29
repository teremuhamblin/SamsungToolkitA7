#!/bin/bash
#
# sensors-check.sh — SamsungToolkitA7
# Vérification des capteurs du Galaxy A7 2018
#

echo "[*] Vérification des capteurs..."

adb shell su -c "sensors" 2>/dev/null

echo "[*] Capteurs via dumpsys..."
adb shell dumpsys sensorservice

echo "[*] Vérification terminée."
