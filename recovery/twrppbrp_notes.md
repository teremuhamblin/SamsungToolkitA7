📁 recovery/TWRPPBRPNOTES.md
`markdown

Recoveries Custom — TWRP & PBRP
Samsung Galaxy A7 2018 — SM‑A750FN/DS

Recoveries compatibles
✔️ TWRP 3.3.x / 3.4.x / 3.5.x  
✔️ PBRP (PitchBlack Recovery Project)  
❌ OrangeFox (non maintenu pour A7)

Notes importantes
- Le bootloader doit être OEM Unlock.
- Le recovery stock écrase TWRP après reboot si :
  - OEM Unlock n’est pas activé
  - /system n’est pas modifié
- Toujours désactiver Auto Reboot dans Odin.

Fonctionnalités TWRP
- Flash ZIP (Magisk, modules, kernels)
- Flash images (boot, recovery)
- Backup partitions (system, vendor, boot, data)
- ADB sideload
- Terminal intégré

Fonctionnalités PBRP
- Interface améliorée
- Support étendu des scripts Aroma
- Gestion avancée des thèmes

Limitations
- Encryption /data : nécessite formatage complet
- MTP parfois instable
- Backup vendor parfois corrompu (limitation Samsung)

Recommandations
- Toujours formater /data après installation TWRP.
- Garder un boot.img stock en backup.
- Utiliser ADB pour les opérations critiques :
  `
  adb shell
  adb sideload fichier.zip
  `
`

---
