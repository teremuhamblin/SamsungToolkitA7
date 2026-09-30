#!/usr/bin/env bash
# SamsungToolkitA7 — Module Initializer
# SPDX-License-Identifier: BlueOak-1.0.0

set -e

# Informations du device
export DEVICE="a7y18lte"
export SOC="exynos7885"
export VENDOR="samsung"

echo "========================================"
echo "  SamsungToolkitA7 — Initialisation module"
echo "========================================"
echo "Device : $DEVICE"
echo "SoC    : $SOC"
echo "Vendor : $VENDOR"
echo "----------------------------------------"

# Vérification de l'environnement
if [ ! -f "../../utils/buildenv.sh" ]; then
    echo "[!] ERREUR : buildenv introuvable."
    echo "[!] Exécute ce script depuis un module du toolkit."
    exit 1
fi

# Chargement de l'environnement
source "../../utils/buildenv.sh"

# Appel du script interne de génération (à créer selon ton module)
if [ -x "./generate-module.sh" ]; then
    ./generate-module.sh "$@"
else
    echo "[*] Aucun script generate-module.sh trouvé."
    echo "[*] Module initialisé, aucune action supplémentaire."
fi

echo "========================================"
echo "  Module prêt."
echo "========================================"
