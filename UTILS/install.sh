#!/bin/bash
# SamsungToolkitA7 — DISCLAIMER
# Vous utilisez ce script à vos propres risques.
# Aucune garantie. Aucune responsabilité en cas de brick, perte de données,
# corruption de partitions ou dysfonctionnement radio.
# Vous choisissez d'exécuter ces opérations. Assumez-les.
# install.sh — SamsungToolkitA7
# Script d'installation automatique des outils nécessaires

echo "[*] Mise à jour du système..."
sudo apt update

echo "[*] Installation ADB & Fastboot..."
sudo apt install -y android-tools-adb android-tools-fastboot

echo "[*] Installation Heimdall..."
sudo apt install -y heimdall-flash

echo "[*] Installation Java & Kotlin..."
sudo apt install -y default-jre default-jdk kotlin

echo "[*] Installation outils boot.img..."
sudo apt install -y mkbootimg unmkbootimg || echo "[!] mkbootimg/unmkbootimg non disponibles dans les dépôts."

echo "[*] Installation terminée."
echo "SamsungToolkitA7 est prêt à l'utilisation."
