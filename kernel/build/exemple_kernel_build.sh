#!/bin/bash
#
# Example Kernel Build Script — SamsungToolkitA7
# Device: Samsung Galaxy A7 2018 (SM-A750FN/DS)
# Kernel: 3.18.x Samsung Modified
#

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-

KERNEL_DIR=$(pwd)
OUT_DIR="$KERNEL_DIR/out"

echo "[*] Cleaning previous build..."
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[*] Starting kernel build..."
make O="$OUT_DIR" a7_defconfig
make -j$(nproc) O="$OUT_DIR"

echo "[*] Build finished."
echo "Output directory: $OUT_DIR"
