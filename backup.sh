#!/bin/bash

# Değişkenler
BACKUP_NAME="ubuntu_dev_setup_$(date +%Y%m%d)"
TEMP_DIR="/tmp/$BACKUP_NAME"
TARGET_FILE="$HOME/$BACKUP_NAME.tar.gz"

echo "🚀 Yedekleme hazırlığı başlıyor..."
mkdir -p "$TEMP_DIR/themes" "$TEMP_DIR/icons"

# 1. GNOME Ayarlarını dışa aktar
dconf dump / > "$TEMP_DIR/gnome_settings.dconf"

# 2. Dotfiles (.bashrc, .vimrc) kopyala
cp "$HOME/.bashrc" "$TEMP_DIR/bashrc"
[ -f "$HOME/.vimrc" ] && cp "$HOME/.vimrc" "$TEMP_DIR/vimrc"

# 3. Temaları ve İkonları kopyala
cp -r "$HOME/.themes/"* "$TEMP_DIR/themes/" 2>/dev/null
cp -r "$HOME/.icons/"* "$TEMP_DIR/icons/" 2>/dev/null

# 4. Yüklü paketlerin listesini al (Yeni makinede kolay kurulum için)
apt list --installed > "$TEMP_DIR/installed_packages.txt"

# 5. Sıkıştırma (tar.gz)
echo "📦 Dosyalar sıkıştırılıyor..."
tar -czf "$TARGET_FILE" -C "/tmp" "$BACKUP_NAME"

# Temizlik
rm -rf "$TEMP_DIR"

echo "--------------------------------------------------"
echo "✅ Yedekleme Tamamlandı: $TARGET_FILE"
echo "--------------------------------------------------"
