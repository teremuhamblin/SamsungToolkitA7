📁 utils/guide-utilisateur.md
`markdown

Guide Utilisateur — SamsungToolkitA7

Ce guide explique comment utiliser le toolkit SamsungToolkitA7 pour analyser, flasher, diagnostiquer et manipuler le Samsung Galaxy A7 2018 (SM‑A750FN/DS).

---

1. Préparation du téléphone
✔ Activer OEM Unlock  
✔ Activer Débogage USB  
✔ Installer les drivers Samsung  
✔ Batterie > 50%  
✔ Sauvegarder EFS si possible

---

2. Installation d’un recovery custom

Via Odin (Windows)
- Charger recovery.tar dans AP
- Désactiver Auto Reboot
- Flasher
- Redémarrer manuellement en recovery

Via Heimdall (Linux)
`
heimdall flash --RECOVERY recovery.img --no-reboot
`

---

3. Manipulation des partitions

Dump complet
`
tools/partition-tools/dump-partitions.sh
`

Vérification
`
tools/partition-tools/check-partitions.sh
`

---

4. Manipulation du boot.img

Extraction
`
tools/boot-tools/extract-boot.sh boot.img
`

Reconstruction
`
tools/boot-tools/repack-boot.sh
`

---

5. Installation / test de GSI
- Choisir une GSI ARM64-Aonly
- Flasher vbmeta désactivé
- Formater /data
- Garder vendor stock

---

6. Diagnostics

Collecte logs
`
diagnostics/collect-logs.sh
`

Vérification capteurs
`
diagnostics/sensors-check.sh
`

---

7. Utilisation Odin Linux

Vérifier ADB / Heimdall
`
kotlin odin-linux.kt
`

---

8. Sécurité
✔ Toujours garder un boot.img stock  
✔ Ne jamais flasher CP d’un autre modèle  
✔ Ne jamais modifier EFS  
✔ Vérifier MD5/SHA256 avant flash  

---

Statut
✔ Guide complet — v1.0
`

---
