📁 kernel/KERNELCUSTOMNOTES.md
`markdown

Kernels Customs — Compatibilité & Notes Techniques

Compatibilité générale
✔️ Compatible : kernels basés sur 3.18 Samsung  
❌ Incompatible : kernels génériques AOSP / Lineage non adaptés au A7

Projets connus
- Kernels modifiés pour GSI
- Kernels permissive
- Kernels avec dm‑verity désactivé

Limitations
- Drivers propriétaires → impossible de porter un kernel moderne (4.x / 5.x)
- Certaines fonctions OneUI ne marchent plus :
  - caméra
  - fingerprint
  - audio HAL
- SELinux passe souvent en permissive → instabilité

Notes sur le boot
- Le kernel custom doit être intégré dans un boot.img reconstruit.
- Le ramdisk doit être adapté :
  - fstab
  - init.rc
  - dm‑verity
  - sepolicy

Recommandations
- Toujours tester avec :
  `
  adb logcat
  adb shell dmesg
  `
- Garder un boot.img stock en backup.
- Ne jamais flasher un kernel custom sans recovery custom (TWRP/PBRP).
`

---
