###### README.md >> markdown 
# SamsungToolkitA7
![Device](https://img.shields.io/badge/DEVICE-Galaxy%20A7%202018%20SM--A750FN%2FDS-blue)
![Android](https://img.shields.io/badge/ANDROID-10%20OneUI%202.0-blue)
![Status](https://img.shields.io/badge/STATUS-ALPHA-blue)

>Toolkit technique pour le **Samsung Galaxy A7 SM‑A750FN/DS**,

### 1. Objectif
Fournir un pack technique propre, sans binaires propriétaires, permettant :
```text
- Analyse firmware / partitions  
- Extraction et manipulation boot.img  
- Diagnostics système / capteurs  
- Documentation complète du device  
- Outils internes pour opérations techniques  
- Scripts d’environnement et d’installation  
- Décryptage de blobs firmware Samsung  
- Automatisation via CI/CD
```

### 2. Structure du projet
La structure complète est disponible dans :  
**docs/structure.md**

### 3. Scripts rapides
- **Diagnostics**
```bash
bash diagnostics/collect-logs.sh
bash diagnostics/sensors-check.sh
```
- **Partitions**
```bash
bash tools/partition-tools/dump-partitions.sh
bash tools/partition-tools/check-partitions.sh
```
- **Boot image**
```bash
bash tools/boot-tools/extract-boot.sh boot.img
bash tools/boot-tools/repack-boot.sh boot-extracted/ new-boot.img
```

- **Firmware**
   - décryptage Samsung
```bash
cat firmware.enc | python3 tools/firmware/decrypt_shuffle.py > firmware.bin
```

### 4. Dossier utils/
Le dossier utils/ contient les outils internes essentiels :
```markdown
- buildenv.sh  
  Initialise l’environnement, configure les chemins, prépare out/, ajoute les outils au PATH.
- install.sh  
  Installe ADB, Fastboot, Heimdall, Java, Kotlin, mkbootimg, unmkbootimg.  
  Crée les dossiers out/ et vérifie les dépendances.
- guides  
  Documentation utilisateur et installation.
```

### 5. Firmware
- sans binaires propriétaires
>Contient :
```markdown
- Structure ROM stock OneUI 2.0  
- Notes partitions / CSC  
- Compatibilité GSI  
- Remarques vendor / SELinux  
- Analyse firmware via decrypt_shuffle.py
```

### 6. Modules internes
Le dossier modules/ permet d’initialiser des modules techniques :
```text
- setup-module.sh  
- generate-module.sh (optionnel)  
- Préparation firmware / kernel / recovery
```

### 7. CI/CD
Pipelines pour :
```text
- Tests des outils  
- Génération de rapports diagnostics  
- Build kernel (exemple)  
- Vérifications automatiques
```

### 8. Avertissements
<p align="center">
Ce dépôt est technique / expérimental.
Aucune ROM, aucun fichier propriétaire Samsung n’est inclus.  
Certaines opérations peuvent entraîner un brick ou une corruption de partitions.</p>
