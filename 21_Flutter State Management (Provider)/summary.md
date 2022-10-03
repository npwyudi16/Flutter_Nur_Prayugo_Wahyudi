# 21_Flutter State Management (Provider)

## Poin yang dipelajari :

### Apa itu State ?
Suatu data yang dapat dibaca saat pembuatan widget. State dapat berubah saat widget sedang aktif dan hanya dimiliki oleh StateFulWidget. State biasanya dibuat sebagai property dari class dan digunakan pada widget pada saat dibuild dengan cara menggunakan method setState.

### Global State
Global State yang dapat digunakan pada seluruh widget (seluruh aplikasi). Global State diperlukan karena agar antara widget dapat memanfaatkan state yang sama dengan mudah tanpa perlu menuliskan ulang state yang sama. dimateri ini Provider yang akan digunakan untuk me-management global state. 

### Provider 
Untuk membuat State Provider perlu mendefinisikan state dalam bentuk class dengan cara membuat Class baru dengan ChangeNotifier dan mendaftarkan-nya pada runApp dengan MultiProvider. Menggunakan Provider dengan menyimpan-nya dalam variable dan mengambil datanya dari Provider melalui getter.