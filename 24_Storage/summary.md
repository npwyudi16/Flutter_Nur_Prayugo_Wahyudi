# 24_Storage

## Poin yang dipelajari :

### Penyimpanan Lokal
Local Storage berperan penting dalam sebuah aplikasi yang diperlukan untuk efesiensi penggunaan data Internet. ada beberapa cara untuk implementasi penyimpanan lokal contohnya seperti menggunakan Shared Preferences dan Local Database (SQLite).

### Shared Preferences
Shared Preferences digunakan untuk Menyimpan data sederhana dengan format key-value dan dapat menyimpan tipe data seperti teks, angka dan boolean. Shared Preferences dapat menyimpan data seperti Login dan Riwayat Pencarian pada aplikasi. Untuk menggunakan-nya di flutter harus menambahkan dependency shared preferences pada pubspec.yaml .

### Local Database (SQLite)
Digunakan untuk menyimpan dan meminta data dalam jumlah besar pada local storage. SQLite adalah database open source yang mendukung create, read, update, delete. Untuk menggunakan-nya di flutter harus menambahkan dependency sqflite pada pubspec.yaml .