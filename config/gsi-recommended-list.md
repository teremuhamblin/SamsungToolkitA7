📁 configs/gsi-recommended-list.md
`markdown

GSI Recommandées — Samsung Galaxy A7 2018 (SM‑A750FN/DS)

Compatibilité générale
✔️ ARM64 — Aonly  
❌ AB  
❌ VNDKLite (instable)

GSI stables recommandées

1. LineageOS GSI 17.1 / 18.1
- Stable
- Bon support caméra
- Fingerprint fonctionnel selon build

2. PixelExperience GSI
- Interface propre
- Bon support réseau
- Audio stable

3. AOSP 10 / 11 / 12
- Très stable
- Idéal pour tests / développement

4. HavocOS GSI
- Fonctionnelle
- Bon équilibre performance / stabilité

GSI déconseillées

❌ MIUI GSI
- Bootloop
- Incompatibilité vendor Samsung

❌ Flyme GSI
- Boot mais crashs HAL

❌ ColorOS GSI
- Boot mais radio non fonctionnelle

Notes importantes
- VoLTE rarement fonctionnel sur GSI
- SELinux souvent permissive → instabilité
- Vendor stock obligatoire

Recommandations
- Flasher vbmeta désactivé :
  `
  fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
  `
- Toujours formater /data avant installation GSI.
`

---
