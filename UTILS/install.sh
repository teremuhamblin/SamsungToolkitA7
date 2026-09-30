#!/usr/bin/env bash
# ============================================================
# SamsungToolkitA7 — install.sh
# Script d'installation des dépendances du toolkit
# ============================================================
# DISCLAIMER :
# Vous utilisez ce script à vos propres risques.
# Aucune garantie. Aucune responsabilité en cas de brick,
# perte de données, corruption de partitions ou dysfonctionnement radio.
# ============================================================

echo "========================================"
echo "  SamsungToolkitA7 — INSTALLATION"
echo "========================================"

# ------------------------------------------------------------
# Vérification de la présence de buildenv.sh
# ------------------------------------------------------------
if [ ! -f "utils/buildenv.sh" ]; then
    echo "[!] ERREUR : utils/buildenv.sh introuvable."
    echo "[!] Ce script doit être exécuté depuis la racine du projet."
    exit 1
fi

echo "[*] Chargement de l'environnement..."
source utils/buildenv.sh || {
    echo "[!] Impossible de charger buildenv.sh"
    exit 1
}

# ------------------------------------------------------------
# Mise à jour système
# ------------------------------------------------------------
echo "[*] Mise à jour du système..."
sudo apt update -y

# ------------------------------------------------------------
# Installation ADB & Fastboot
# ------------------------------------------------------------
echo "[*] Installation ADB & Fastboot..."
sudo apt install -y android-tools-adb android-tools-fastboot

# ------------------------------------------------------------
# Installation Heimdall
# ------------------------------------------------------------
echo "[*] Installation Heimdall..."
sudo apt install -y heimdall-flash

# ------------------------------------------------------------
# Installation Java & Kotlin
# ------------------------------------------------------------
echo "[*] Installation Java & Kotlin..."
sudo apt install -y default-jre default-jdk kotlin

# ------------------------------------------------------------
# Installation outils boot.img
# ------------------------------------------------------------
echo "[*] Installation outils boot.img..."
sudo apt install -y mkbootimg unmkbootimg || {
    echo "[!] mkbootimg/unmkbootimg non disponibles dans les dépôts."
}

# ------------------------------------------------------------
# Création des dossiers out/ nécessaires
# ------------------------------------------------------------
echo "[*] Préparation des dossiers out/..."
mkdir -p "$OUT_DIR"
mkdir -p "$OUT_DIR/logs"
mkdir -p "$OUT_DIR/tmp"
mkdir -p "$OUT_DIR/odin"
mkdir -p "$OUT_DIR/fw"
mkdir -p "$OUT_DIR/tools"

# ------------------------------------------------------------
# Vérifications rapides
# ------------------------------------------------------------
echo "[*] Vérification des outils installés..."

command -v adb >/dev/null && echo "[OK] adb détecté" || echo "[!] adb manquant"
command -v fastboot >/dev/null && echo "[OK] fastboot détecté" || echo "[!] fastboot manquant"
command -v heimdall >/dev/null && echo "[OK] heimdall détecté" || echo "[!] heimdall manquant"
command -v mkbootimg >/dev/null && echo "[OK] mkbootimg détecté" || echo "[!] mkbootimg manquant"
command -v unmkbootimg >/dev/null && echo "[OK] unmkbootimg détecté" || echo "[!] unmkbootimg manquant"

# ------------------------------------------------------------
# Fin
# ------------------------------------------------------------
echo "========================================"
echo "  Installation terminée."
echo "  SamsungToolkitA7 est prêt."
echo "========================================"
