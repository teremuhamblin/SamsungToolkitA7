# Checklist Sécurité — Samsung Galaxy A7 2018 (SM‑A750FN/DS)

## Avant toute modification
✔️ Activer **OEM Unlock**  
✔️ Activer **Débogage USB**  
✔️ Installer les drivers Samsung  
✔️ Vérifier que la batterie > 50%  
✔️ Sauvegarder IMEI / EFS si possible

## Avant flash recovery / ROM / kernel
✔️ Désactiver Auto Reboot dans Odin  
✔️ Vérifier l’intégrité des fichiers (MD5/SHA256)  
✔️ Garder un boot.img stock en backup  
✔️ Vérifier compatibilité ARM64 — Aonly

## Pendant le flash
✔️ Ne jamais débrancher le câble  
✔️ Ne jamais fermer Odin / Heimdall  
✔️ Surveiller les messages FAIL / ERROR

## Après installation TWRP/PBRP
✔️ Redémarrer manuellement en recovery  
✔️ Formater /data  
✔️ Vérifier que TWRP n’est pas écrasé

## Pour les GSI
✔️ Flasher vbmeta désactivé  
✔️ Formater /data  
✔️ Garder vendor stock  
✔️ Vérifier logcat + dmesg en cas de bug

## Pour Magisk
✔️ Installer modules un par un  
✔️ Redémarrer après chaque module  
✔️ Éviter modules modifiant SELinux  
✔️ Vérifier boot.img avant modifications

## Risques critiques
⚠️ Perte IMEI si EFS corrompu  
⚠️ Bootloop si vendor modifié  
⚠️ Brick si mauvais BL/CP flashé  
⚠️ Recovery stock réécrit TWRP si Auto Reboot activé

## Statut
✔️ Checklist complète — v1.0
