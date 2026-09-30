# Modules — SamsungToolkitA7

Ce dossier contient les scripts d’initialisation des modules du toolkit.

## setup-module.sh
Script permettant d’initialiser un module interne pour le device **a7y18lte** (Samsung Galaxy A7 2018).

### Fonction
- Définit les variables du device (DEVICE, SOC, VENDOR)
- Charge l’environnement via `utils/buildenv.sh`
- Exécute un script interne `generate-module.sh` si présent

### Utilisation
```bash
./setup-module.sh
```
