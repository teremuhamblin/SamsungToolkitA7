# Kernel Stock — Samsung Galaxy A7 2018 (SM‑A750FN/DS)

## Version
- **Linux Kernel 3.18.x** modifié par Samsung
- Patchs spécifiques : sécurité, drivers, HAL, gestion énergie

## Caractéristiques principales
- **SELinux enforcing**
- **Ramdisk compressé** (stock)
- Drivers propriétaires :
  - caméra
  - audio
  - fingerprint
  - modem
  - capteurs
- Gestion batterie optimisée Samsung

## Limitations
- Kernel ancien (3.18) → compatibilité limitée avec certaines ROM modernes
- Drivers fermés → impossible de reconstruire un kernel 100% fonctionnel sans blobs Samsung
- Ramdisk stock incompatible avec certaines GSI

## Notes techniques
- Le kernel stock est fortement lié au vendor.
- Toute modification du kernel nécessite un **boot.img** reconstruit.
- Le kernel stock impose des restrictions sur :
  - SELinux
  - dm‑verity
  - vérification bootloader

## Recommandations
- Toujours conserver le **vendor stock** pour éviter les bootloops.
- Ne jamais mélanger kernel stock + vendor modifié.
