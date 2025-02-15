#!/bin/bash

echo "🚀 Installation des dépendances pour Cyber-Tool..."

# 📌 Mise à jour et installation des packages nécessaires
echo "🔧 Installation des outils système..."
pkg update -y && pkg upgrade -y
pkg install -y python python-pip openssl rust clang cmake make libffi openssl-tool

# 📌 Installation des modules Python
echo "📦 Installation des modules Python..."
pip install --no-cache-dir -r requirements.txt

# 📌 Installation manuelle des modules critiques (Pillow inclus)
echo "🔧 Installation des dépendances supplémentaires..."
pip install --no-cache-dir smbprotocol pillow pexpect
# 📌 Vérification des modules installés
echo "🔍 Vérification des installations..."
pip list | grep -E "requests|urllib3|pyyaml|colorama|tqdm|rich|pyfiglet|pygments|beautifulsoup4|html5lib|soupsieve|httpx|aiohttp|scapy|paramiko|smbprotocol|concurrent.futures|pillow"

echo "✅ Installation terminée ! 💀 Cyber-Tool est prêt à l'emploi."
