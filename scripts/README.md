# Firmware Tools — SamsungToolkitA7

Ce dossier contient les outils dédiés à l’analyse et au traitement des firmwares Samsung.

## decrypt_shuffle.py
Script Python permettant de déshuffler et de décrypter des blocs de données utilisant :
- la table de permutation propriétaire Samsung,
- un mode AES-CTR simulé sur 32 blocs via AES-ECB.

### Utilisation
```bash
cat encrypted.bin | python3 decrypt_shuffle.py > decrypted.bin
