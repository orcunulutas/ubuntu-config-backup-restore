# 🐧 Ubuntu Developer Setup & Personalization

Bu depo, Ubuntu (GNOME) masaüstü ortamını verimli ve görsel olarak şık bir hale getirmek için kullanılan yapılandırma dosyalarını ve otomasyon scriptlerini içerir.

## 🚀 Hızlı Başlangıç (Yeni Makine İçin)

Yeni bir kurulum yaptıysanız sırasıyla şu adımları izleyin:

### 1. Bağımlılıkları Kur
Sistemin temaları ve ayarları tanıyabilmesi için gerekli araçları yükler:
```bash
chmod +x setup.sh
./setup.sh
```

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
