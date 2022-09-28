# 18_Form Picker

## Poin yang dipelajari :

### MainAxisSize
Menentukan seberapa banyak space yang menempati main axis . Properti ini memiliki dua value yaitu MainAxis.max yang menempati semua space dari main axis dan MainAxis.min yang tidak memiliki extra space, hanya children-nya saja.

### MainAxisAlignment
Properti yang digunakan untuk Row dan Column untuk memposisikan children mereka di extra space yang ada.

Memiliki 6 values yaitu :
- MainAxisAlignment.start
- MainAxisAlignment.end
- MainAxisAlignment.center
- MainAxisAlignment.spaceBetween
- MainAxisAlignment.spaceEvenly
- MainAxisAlignment.spaceAround

### CrossAxisAlignment
Properti yang digunakan Row dan Column untuk memposisikan children mereka pada cross axis. Cross Axis dari Row adalah vertikal dan Cross Axis dari Column adalah horizontal.

Memiliki 5 values yaitu :
- CrossAxisAlignment.start
- CrossAxisAlignment.end
- CrossAxisAlignment.center
- CrossAxisAlignment.stretch
- CrossAxisAlignment.baseline

### Interactive Widgets
Interaksi antara aplikasi dan user dan untuk mengumpulkan feedback atau informasi dari user. Contohnya seperti dibawah ini:

- Date Picker
Widget yang digunakan untuk memasukan tanggal seperti tanggal kelahiran , waktu pemesanan tiket , reservasi , jadwal meeting pada aplikasi.

- Color Picker 
Widget yang digunakan user untuk memilih warna untuk menghiasi aplikasi-nya

- File Picker 
Memiliki Kemampuan widget untuk mengakses storage yang dapat digunakan untuk memilih dan membuka file.