#!/bin/bash

ARCHIVE_FILE=$1

if [ ! -f "$ARCHIVE_FILE" ]; then
    echo "❌ Hata: Lütfen geçerli bir .tar.gz dosyası belirtin!"
    echo "Örnek: ./restore.sh ubuntu_dev_setup_20260107.tar.gz"
    exit 1
fi

TEMP_EXTRACT="/tmp/ubuntu_restore_$(date +%s)"
mkdir -p "$TEMP_EXTRACT"

echo "🔓 Paket açılıyor..."
tar -xzf "$ARCHIVE_FILE" -C "$TEMP_EXTRACT"
DIR_NAME=$(ls "$TEMP_EXTRACT")
DATA_DIR="$TEMP_EXTRACT/$DIR_NAME"

# 1. Klasörleri yerine koy (Themes & Icons)
echo "📂 Temalar ve ikonlar yükleniyor..."
mkdir -p "$HOME/.themes" "$HOME/.icons"
cp -r "$DATA_DIR/themes/"* "$HOME/.themes/" 2>/dev/null
cp -r "$DATA_DIR/icons/"* "$HOME/.icons/" 2>/dev/null

# 2. Dotfiles geri yükle
cp "$DATA_DIR/bashrc" "$HOME/.bashrc"
[ -f "$DATA_DIR/vimrc" ] && cp "$DATA_DIR/vimrc" "$HOME/.vimrc"

# 3. GNOME ayarlarını dconf ile içeri aktar
echo "⚙️ GNOME ayarları uygulanıyor..."
dconf load / < "$DATA_DIR/gnome_settings.dconf"

# Temizlik
rm -rf "$TEMP_EXTRACT"

echo "--------------------------------------------------"
echo "✨ İşlem Başarıyla Tamamlandı!"
echo "⚠️ Not: Ayarların tam oturması için oturumu kapatıp açın."
echo "--------------------------------------------------"
