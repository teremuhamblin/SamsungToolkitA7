📁 configs/magisk-modules-notes.md
`markdown

Modules Magisk — Notes & Compatibilité

Modules recommandés

✔️ BusyBox for Android NDK
- Stable
- Nécessaire pour certains scripts

✔️ MagiskHide Props Config
- Permet de corriger fingerprint
- Utile pour SafetyNet (si supporté)

✔️ Universal SafetyNet Fix
- Fonctionne sur Android 10
- Peut aider pour apps bancaires

✔️ Audio Modification Library
- Compatible avec A7
- Permet installation de mods audio

Modules à éviter

❌ Modules modifiant SELinux
- Instabilité
- Bootloops fréquents

❌ Modules caméra non officiels
- Incompatibles avec drivers Samsung

❌ Modules modem / radio
- Risque de perte IMEI
- Risque de perte réseau LTE

Notes importantes
- Toujours garder un backup du boot.img
- Ne jamais installer plusieurs modules audio en même temps
- Vérifier compatibilité Android 10 / OneUI 2.0

Commandes utiles
`
adb shell magisk --list-modules
adb shell magisk --remove-module nomdumodule
`
`

---
