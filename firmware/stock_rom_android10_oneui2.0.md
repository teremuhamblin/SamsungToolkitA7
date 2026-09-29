# ROM Stock — Android 10 / OneUI 2.0
Samsung Galaxy A7 2018 — SM‑A750FN/DS  
Version finale officielle (A750FNXXU5CTK1 / A750FXXU5CTK1 selon région).

## Structure des fichiers (Odin)
- **AP** — Système principal (boot.img, recovery.img, system.img, vendor.img)
- **BL** — Bootloader (sboot, param, up_param)
- **CP** — Modem (radio)
- **CSC / HOME_CSC** — Configuration régionale, apps opérateurs, partition /efs
- **PIT** — Table des partitions (rarement fournie)

## Partitions principales
- **boot** — Kernel + ramdisk
- **recovery** — Recovery stock
- **system** — Framework Android + OneUI
- **vendor** — Drivers, HAL, blobs Samsung
- **product** — Apps OneUI
- **odm** — Modules spécifiques
- **efs** — IMEI, certificats radio
- **userdata** — Données utilisateur

## Informations importantes
- **Kernel 3.18 modifié Samsung**
- **SELinux : enforcing**
- **Bootloader verrouillé par défaut**
- **A/B non supporté** (device non‑A/B)
- **Recovery stock incompatible avec TWRP sans OEM Unlock**

## Notes techniques
- Le vendor est strict : toute ROM GSI doit être compatible **ARM64‑Aonly**.
- Le modem est sensible : un CP incorrect peut désactiver LTE/VoLTE.
- Le CSC influe sur : VoLTE, Wi‑Fi Calling, APN, région, apps opérateur.

## Version recommandée
**A750FNXXU5CTK1** — dernière version stable Android 10 / OneUI 2.0.
