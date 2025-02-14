#!/bin/bash

echo "🚀 Installation des dépendances pour Cyber-Tool..."

# Vérification et installation de pip si absent (MAIS PAS DE MISE À JOUR)
if ! command -v pip &> /dev/null; then
    echo "⚠️ pip n'est pas installé. Installation en cours..."
    python3 -m ensurepip --default-pip
else
    echo "✅ pip est déjà installé."
fi

# Installation des dépendances principales
pip install -r requirements.txt --no-cache-dir

echo "✅ Installation terminée ! Cyber-Tool est prêt à l'emploi."
