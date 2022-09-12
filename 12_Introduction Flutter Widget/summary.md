# 12_Introduction Flutter Widget

## Poin yang dipelajari :

### Flutter
Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, deskstop dan web. Flutter adalah SDK (Software Development Kit) yang dikembangkan oleh Google untuk membuat aplikasi yang bagus dan bisa berjalan pada berbagai platform yang memberikan dukungan pada Anda untuk membangun aplikasi pada sistem operasi Android, iOS, Web, Windows, Linux, dan MacOS. Dengan ini, Anda cukup sekali coding atau dikenal dengan single codebase. Flutter juga sudah digunakan oleh banyak developer maupun organisasi di seluruh dunia, selain itu Flutter bersifat open source.

Keunggulan Flutter :
- Mudah digunakan 
- Produktivitas Tinggi 
- Dokumentasi Lengkap
- Komunitas yang Berkembang

### Stateless Widget
Setelah mengenal apa itu state, maka yang pertama kita akan bahas adalah StatelessWidget. StatelessWidget adalah widget yang nilai state-nya tidak dapat berubah (immutable) maka widget tersebut lebih bersifat statis dan memiliki interaksi yang terbatas. Maka state yang ada di dalam kelas tersebut harus dibuat final. Nilainya hanya dapat diisi melalui constructor class-nya.

### StateFul Widget
Kebalikan dari StatelessWidget, StatefulWidget ialah widget yang state-nya dapat berubah-ubah nilainya, yang berarti StatefulWidget bersifat dinamis dan memiliki interaksi yang tak terbatas.

### Widget 
Widget pada Flutter terinspirasi oleh salah satu framework JavaScript yang digunakan untuk membangun sebuah website yaitu ReactJS. ReactJS memiliki konsep Component. Widget sama halnya dengan component yang merupakan kumpulan block code untuk membangun aplikasi Flutter. Ketika membangun aplikasi Flutter kita harus berpikir layaknya bermain Bongkar-Pasang. Kita harus bisa membuat dan menyusun widget-widget dengan tepat. Tujuannya, agar aplikasi yang kita buat lebih mudah untuk dikembangkan.