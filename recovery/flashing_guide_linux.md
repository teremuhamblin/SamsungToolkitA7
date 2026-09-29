📁 recovery/flashing-guide-linux.md
`markdown

Guide de Flash — Linux (Heimdall)
Samsung Galaxy A7 2018 — SM‑A750FN/DS

Prérequis
- Heimdall installé :
  `
  sudo apt install heimdall-flash
  `
- Fichier recovery.img  
- Bootloader OEM Unlock activé

Étapes

1. Mode Download
- Volume Bas + Volume Haut + USB  
- Confirmer avec Volume Haut

2. Vérifier la connexion
`
heimdall detect
`

3. Flash du recovery
`
heimdall flash --RECOVERY recovery.img --no-reboot
`

4. Redémarrage manuel en recovery
- Maintenir Volume Haut + Power  
- Le recovery custom démarre

Notes importantes
- --no-reboot est obligatoire pour éviter l’écrasement par le recovery stock.
- Heimdall est parfois plus fiable qu’Odin pour les images brutes.
- Si erreur :
  `
  sudo heimdall flash --RECOVERY recovery.img --no-reboot
  `

Commandes utiles
`
adb reboot bootloader
adb reboot recovery
`

Recommandations
- Toujours formater /data après installation TWRP/PBRP.
- Garder un boot.img stock en backup.
`

---
