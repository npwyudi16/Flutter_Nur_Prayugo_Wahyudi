# 14_Flutter Command Line Interface (CLI) and Flutter Package Management

## Poin yang dipelajari :

### Flutter CLI
Alat yang digunakan untuk berinteraksi dengan Flutter SDK. Flutter CLI biasanya dijalankan menggunakan perintah melalui terminal.

### Important CLI Commands
- Flutter Doctor 
- Flutter Create
- Flutter Run
- Flutter Emulator
- Flutter Channel
- Flutter Pub
- Flutter Build 
- Flutter Clean

### Packages Management
Flutter mendukung sharing package yang disediakan oleh deveoper Google maupun Developer lain yang bertujuan untuk mempercepat pengembangan aplikasi karena tidak perlu membuatnya dari awal. Setiap packages atau plugin ini tersedia di website pub.dev 

Cara Menambahkan Packages atau Plugins :
- Cari Package di website pub.dev 
- Copy baris dependencies yang ada dibagian installing
- Lanjut ke pubspec.yaml
- Paste barisnya dibawah tulisan cupertino_icons: ^1.0.2 bagian dependencies
- Jalankan perintah run flutter pub get
- Import package di file dart pada saat dibutuhkan
- Dan restart aplikasi apabila dibutuhkan