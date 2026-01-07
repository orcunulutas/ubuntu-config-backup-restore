#!/bin/bash

echo "🛠️  Sistem araçları yükleniyor..."

# Paket listesini güncelle
sudo apt update

# Gerekli temel araçları yükle
sudo apt install -y \
    gnome-tweaks \
    gnome-shell-extension-manager \
    dconf-cli \
    git \
    curl \
    sassc \
    gettext

echo "✅ Temel araçlar yüklendi."

# Dash to Panel eklentisini indirmek için bir hatırlatma veya 
# (opsiyonel) eklentiyi CLI üzerinden kurma komutları buraya eklenebilir.

echo "--------------------------------------------------"
echo "🚀 Sistem hazır! Şimdi ./restore.sh ile yedeğini dönebilirsin."
