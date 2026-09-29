📁 diagnostics/system-report.md
`markdown

Rapport Système — Samsung Galaxy A7 2018 (SM‑A750FN/DS)

Informations générales
- Modèle : SM‑A750FN/DS  
- Android : 10  
- OneUI : 2.0  
- Kernel : 3.18.x Samsung modifié  
- Vendor : Samsung ARM64 Aonly  
- Bootloader : verrouillé par défaut, OEM Unlock requis

Partitions principales
- boot  
- recovery  
- system  
- vendor  
- product  
- odm  
- efs  
- userdata  

Commandes utiles (ADB)

Infos système
`
adb shell getprop
adb shell cat /proc/cpuinfo
adb shell cat /proc/meminfo
adb shell df -h
`

Logs
`
adb logcat
adb shell dmesg
adb shell logcat -b radio
adb shell logcat -b events
`

Capteurs
`
adb shell dumpsys sensorservice
adb shell su -c sensors
`

Réseau
`
adb shell ip addr
adb shell ip route
adb shell ping google.com
`

Notes techniques
- Le vendor impose SELinux enforcing.
- Le kernel stock limite certaines fonctions des GSI.
- Les logs radio sont essentiels pour diagnostiquer VoLTE/LTE.
- Les erreurs HAL apparaissent dans dmesg et logcat.

Statut
✔️ Rapport initial complet — v1.0
`

---
