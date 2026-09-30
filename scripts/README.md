# Firmware Tools — SamsungToolkitA7

Ce dossier contient les outils dédiés à l’analyse et au traitement des firmwares Samsung.

## decrypt_shuffle.py
Script Python permettant de déshuffler et de décrypter des blocs de données utilisant :
- la table de permutation propriétaire Samsung,
- un mode AES-CTR simulé sur 32 blocs via AES-ECB.

### Utilisation
```bash
cat encrypted.bin | python3 decrypt_shuffle.py > decrypted.bin
```

Voici la traduction française complète, propre, claire et fidèle au texte original, sans rien ajouter ni retirer.

---

### 🇫🇷 Samsung Firmware Magic

Samsung distribue des mises à jour de firmware pour leurs SSD sous forme de versions « Windows » ou « Mac ». Ironiquement, ces deux versions sont en réalité des images Linux bootables au format .iso, contenant le firmware et le programme de mise à jour.

Les fichiers .iso peuvent être décompressés, mais au final on obtient un blob binaire obscurci, même pour les métadonnées.

Pour télécharger les fichiers d’origine, voir :

https://www.samsung.com/semiconductor/minisite/ssd/download/tools/

Par curiosité, j’ai décidé de créer un outil de déchiffrement pour ce format obscurci, disponible dans ce dépôt.

---

📦 Décompression de l’image ISO vers le blob firmware

D’abord, on télécharge un ISO de firmware :

`
wget http://downloadcenter.samsung.com/content/FM/201711/20171102105105735/SamsungSSD850PROEXM04B6Q_Win.iso
`

Ensuite, on extrait le fichier pertinent depuis l’ISO, l’initrd :

`
7z x SamsungSSD850PROEXM04B6Q_Win.iso initrd
`

Ce fichier est une archive cpio compressée en gzip, donc on utilise 7z pour retirer la couche gzip :

`
7z x initrd
`

Cela produit initrd~, contenant les données décompressées.  
À partir de là, on extrait le répertoire qui nous intéresse : root/fumagician :

`
7z -ofw x 'initrd~' root/fumagician
`

Cela crée fw/root/fumagician dans le répertoire courant :

`
$ cd fw/root/fumagician
$ ls -l
total 5408
-rw-rw-r-- 1 user user    2124 1971-03-22 19:52 DSRD.enc
-rw-rw-r-- 1 user user 4752867 1971-03-22 19:52 EXM04B6Q.enc
-rw-rw-r-- 1 user user  772516 2016-10-14 10:42 fumagician
-rw-rw-r-- 1 user user     290 2016-10-14 10:42 fumagician.sh
`

Les fichiers DSRD.enc (liste XML des firmwares) et EXM04B6Q.enc (firmwares) sont les fichiers obscurcis que nous pouvons maintenant déchiffrer.

---

🔓 Déchiffrement du blob firmware

Le script decode.py inclus permet de déchiffrer ces fichiers .enc, comme ceci :

Afficher le XML sur stdout :

`
./samsung-magic.py < fw/root/fumagician/DSRD.enc
`

Déchiffrer le firmware dans un fichier :

`
./samsung-magic.py < fw/root/fumagician/EXM04B6Q.enc > EXM04B6Q.bin
`

Apparemment, les ingénieurs de Samsung sont de grands fans des structures imbriquées, car le fichier déchiffré EXM04B6Q.bin est en réalité un fichier ZIP, contenant des fichiers de firmware eux-mêmes chiffrés :

`
$ unzip -l EXM04B6Q.bin
Archive:  EXM04B6Q.bin
  Length      Date    Time    Name
---------  ---------- -----   ----
  1048576  2017-02-19 10:41   EXM04B6Q_10170217.enc
  1048576  2017-02-19 10:41   EXM04B6Q_20170203.enc
  1048576  2017-02-19 10:41   EXM04B6Q_30170203.enc
  1048576  2017-02-19 10:41   EXM04B6Q_40170902.enc
  1048576  2017-02-19 10:41   EXM04B6Q_50170208.enc
  1048576  2017-02-19 10:41   EXM04B6Q_60170208.enc
---------                     -------
  6291456                     6 files
`

Heureusement, le chiffrement est exactement le même, donc samsung-magic.py peut aussi déchiffrer ces fichiers :

`
$ unzip EXM04B6Q.bin
$ ./samsung-magic.py < EXM04B6Q10170217.enc > EXM04B6Q10170217.bin
`
