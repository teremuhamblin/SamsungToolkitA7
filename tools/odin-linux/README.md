📁 tools/odin-linux/README.md
`markdown

Odin Linux / Heimdall — Tools
Outils dédiés à l’utilisation de Heimdall sous Linux pour le Samsung Galaxy A7 2018 (SM‑A750FN/DS).

Contenu
- odin-linux.kt — Script Kotlin CLI pour vérifier la présence d’ADB et Heimdall.
- odin-linux.config — Fichier de configuration simple (chemins, options).
- Notes d’utilisation Heimdall.

Installation Heimdall
`
sudo apt install heimdall-flash
`

Vérifier la connexion
`
heimdall detect
`

Flash d’un recovery
`
heimdall flash --RECOVERY recovery.img --no-reboot
`

Notes importantes
- Toujours utiliser --no-reboot pour éviter l’écrasement du recovery custom.
- Redémarrer manuellement en recovery : Volume Haut + Power.
- ADB utile pour les opérations critiques :
  `
  adb reboot bootloader
  adb reboot recovery
  `

Statut
✔️ Version initiale — v1.0
`

---
