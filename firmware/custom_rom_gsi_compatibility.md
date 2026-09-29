# Compatibilité GSI — Samsung Galaxy A7 2018 (SM‑A750FN/DS)

## Type de GSI compatible
✔️ **ARM64 — Aonly**  
❌ AB  
❌ VNDKLite (instable)

## Conditions nécessaires
- Bootloader **OEM Unlock** activé
- Recovery custom (TWRP ou PBRP)
- Vendor stock intact
- Formatage complet de /data recommandé

## Limitations connues
- **VoLTE** : non fonctionnel sur la majorité des GSI
- **NFC** : instable selon les builds
- **Caméra** : dépend fortement des blobs Samsung
- **Fingerprint** : fonctionne sur certaines GSI (Lineage, PixelExperience)
- **Audio** : nécessite parfois un patch mixer_paths.xml

## GSI testées
### Fonctionnelles :
- **LineageOS GSI 17.1 / 18.1**
- **PixelExperience GSI**
- **HavocOS GSI**
- **AOSP 10 / 11 / 12**

### Problèmes majeurs :
- **MIUI GSI** — incompatibilité vendor
- **Flyme GSI** — bootloop
- **ColorOS GSI** — boot mais pas de radio

## Notes SELinux
- Le vendor impose **SELinux enforcing**  
- Certaines GSI passent automatiquement en **permissive** → instabilité

## Recommandations
- Toujours flasher **vbmeta désactivé** :
