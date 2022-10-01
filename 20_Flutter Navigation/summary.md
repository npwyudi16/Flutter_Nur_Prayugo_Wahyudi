# 20_Flutter Navigation

## Poin yang dipelajari :

### Apa itu Navigation ?
Navigation merupakan perpindahan dari halaman satu ke halaman lainya yang biasanya pengguna berpindah di antara halaman yang berbeda. Misalnya, sebuah aplikasi dapat memiliki layar yang berisi berbagai produk. Ketika pengguna mengklik produk itu, segera akan muncul informasi rinci tentang produk itu. 

### Navigation Dasar 
- Navigator.push() menambahkan halaman/rute pada tumpukan dan kemudian mengelolanya dengan menggunakan Navigator.
- Navigator.pop() untuk menutup rute dan kembali ke rute halaman sebelumnya. Metode pop() memungkinkan kita untuk menghapus rute saat ini dari tumpukan yang dikelola oleh Navigator.

### Navigation dengan Named Routes
Navigasi yang tiap halamanya memiliki nama dan fungsi Navigator.pushNamed() ini membutuhkan dua argumen yang diperlukan (konteks dan string build) dan satu argumen opsional. Pada langkah ini, kita harus menentukan atau mendaftarkan rute terlebih dahulu. Konstruktor MaterialApp bertanggung jawab untuk mendefinisikan rute awal dan rute lainnya sendiri.