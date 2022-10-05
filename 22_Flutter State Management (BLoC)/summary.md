# 22_Flutter State Management (BLoC)

## Poin yang dipelajari :

### Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini. 

### State
Ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori. Flutter akan membangun ulang UI-nya ketika ada state atau data yang berubah. Ada 2 jenis state dalam flutter yaitu :

- Ephemeral State digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya ,contohnya seperti PageView , BottomNavigationBar , Switch Button.

- App State digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya seperti Login info, Pengaturan prefrensi pengguna , Keranjang belanja yang dimana informasi yang pengguna pilih dapat muncul di screen yang berbeda.

### Provider 
Penggunaan untuk state management yang lebih kompleks seperti penggunaan App state, pendekatan ini direkomendasikan juga oleh tim flutter karena mudah dipelajari. Adapun Class yang harus diperhatikan dalam menggunakan Provider yaitu : dari Packages Provider ( ChangeNotifierProvider , MultiProvider , Consumer) dan ChangeNotifier(built in Class dari Flutter SDK).

### BloC
Bussiness Logic Component yang digunakan untuk memisahkan antara bussiness logic dengan UI, BloC juga menggunakan pola Stream/observable untuk memisahkan UI dengan bussiness logic nya. Cara Kerja BloC yaitu :
- Menerima event sebagai input
- Dianalisa dan Dikelola dalam BloC
- Menghasilkan state sebagai output