📁 recovery/flashing-guide-odin.md
`markdown

Guide de Flash — Odin (Windows)
Samsung Galaxy A7 2018 — SM‑A750FN/DS

Prérequis
- Odin 3.13+  
- Drivers Samsung USB  
- Fichier recovery.img ou recovery.tar  
- Bootloader OEM Unlock activé

Étapes

1. Redémarrer en mode Download
- Éteindre le téléphone  
- Volume Bas + Volume Haut + USB  
- Confirmer avec Volume Haut

2. Préparer Odin
- Lancer Odin  
- Cocher Auto Reboot (désactivé)  
- Cocher F. Reset Time  
- Charger le recovery dans AP

3. Flash
- Cliquer Start  
- Attendre le message PASS

4. Redémarrage manuel
- Maintenir Volume Haut + Power  
- Le téléphone démarre directement sur TWRP/PBRP

Notes importantes
- Si Auto Reboot est activé → recovery stock réécrit TWRP.  
- Toujours redémarrer manuellement en recovery après flash.  
- Si TWRP disparaît → reflasher + formater /data.

Commandes utiles (ADB)
`
adb reboot bootloader
adb reboot recovery
`
`

---
