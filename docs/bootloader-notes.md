# Bootloader Notes — Galaxy A7 SM-A750FN/DS

## Mode Download
- Accès : Volume Bas + Volume Haut + USB
- Interface : Odin (Windows) / Heimdall (Linux)

## Verrouillage
- Bootloader déverrouillable
- Knox trippé lors du déverrouillage
- dm-verity actif sur ROM stock

## Particularités
- vbmeta doit être patché pour kernels custom
- dtbo doit correspondre au kernel utilisé
