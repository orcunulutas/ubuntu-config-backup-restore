# 🐧 Ubuntu Developer Setup & Personalization

Bu depo, Ubuntu (GNOME) masaüstü ortamını daha verimli ve görsel olarak daha şık bir hale getirmek için kullandığım yapılandırma dosyalarını ve otomasyon scriptlerini içerir.

## ✨ Özellikler
* **Tema:** Orchis-Dark (Yuvarlatılmış modern materyal tasarım)
* **İkonlar:** Tela-circle-blue
* **Panel:** Dash to Panel (Pardus/Windows benzeri alt görev çubuğu)
* **Konfigürasyonlar:** `.bashrc` ve `.vimrc` yedeklerini içerir

## 🚀 Kullanım

### 1. Yedekleme (Backup)
Mevcut sistem ayarlarını, temaları ve dotfile'ları paketleyip tek bir `.tar.gz` dosyası oluşturur:
```bash
chmod +x backup.sh
./backup.sh
