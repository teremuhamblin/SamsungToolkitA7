📁 utils/guide-installation.md
`markdown

Guide d’Installation — SamsungToolkitA7

Ce guide explique comment installer les outils nécessaires pour utiliser le toolkit SamsungToolkitA7.

---

1. Installation ADB & Fastboot

Linux (Debian/Ubuntu)
`
sudo apt update
sudo apt install android-tools-adb android-tools-fastboot
`

Vérification
`
adb devices
fastboot --version
`

---

2. Installation Heimdall (Linux)
`
sudo apt install heimdall-flash
`

Vérification
`
heimdall detect
`

---

3. Installation Java & Kotlin (pour odin-linux.kt)

Linux
`
sudo apt install default-jre default-jdk
sudo apt install kotlin
`

Vérification
`
kotlin -version
`

---

4. Installation des dépendances Bash
✔ bash  
✔ coreutils  
✔ gzip  
✔ cpio  
✔ mkbootimg / unmkbootimg (selon distribution)

---

5. Installation via script automatique
`
chmod +x install.sh
./install.sh
`

---

Statut
✔ Guide complet — v1.0
`

---
