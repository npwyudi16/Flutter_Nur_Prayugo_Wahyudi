# 7_Branching - Looping - Function

## 3 Poin yang dipelajari :

### Pengambilan Keputusan 
Menentukan alur program pada kondisi tertentu.

- IF : 
Memerlukan nilai bool dari operator logical atau comparasion, 
menjalankan bagian proses jika nilai bool bernilai true. 

dituliskan : 
if (nilai_bool) {
   //jika proses bernilai true maka akan tereksekusi
}

- IF-ELSE : 
Berjalan bersama if dan menambahkan alternatif false pada nilai bool

dituliskan :
if (nilai_bool) {
   //proses tereksekusi apabila nilai true
} else {
  //proses tereksekusi jika nilai false
}

- Sisispan ELSE-IF : 
Berjalan dengan if dan menambahkan pengujian nilai bool lain

dituliskan :
if (nilai_bool) {
   //proses tereksekusi jika nilainya true
} else if (nilai_bool) {
  //proses tereksekusi apabila nilainya false dan nilai boolnya juga true
} else {
  //dan proses tereksekusi apabila nilainya hanya false
}

### Perulangan 
Menjalankan proses berulangkali

- For : 
Diketahui berapa kali perulangan terjadi , memerlukan nilai awal , memerlukan nilai bool , jika true maka perulanganakan dilanjutkan, memerlukan pengubah nilai

dituliskan : 
for (nilai_awal; nilai_bool; pengubah nilai awal) {
    //proses tereksekusi berulang apabila nilai boolnya true
}

- While : 
Tidak diketahui berapa kali perulangan yang terjadi, memerlukan nilai bool , jika true maka perulangan dilanjutkan

dituliskan :
while (nilai_bool) {
  //proses tereksekusi berulang apabila nilai boolnya true
}

- Do-While : 
Mengubah bentuk while , proses yang dijalankan minimunya sekali dan akan diteruskan apabila nilai boolnya true

dituliskan :
do {
   // proses tereksekusi berulang jika nilai boolnya true
} while (nilai_bool);

- Break dan Continue : 
Cara lain menghentikan perulangan, perulangan menggunakan nilai bool untuk lanjut atau berhenti. Break dan Continue dapat menghentikan perulangan dengan mengabaikan nilai bool dan dapat menghentikan satu kali proses. Perbedaan break dan continue yaitu break menghentikan seluruh proses perulangan sedangkan continue menghentikan satu kali proses perulangan

### Function 
Kumpulan kode / perintah yang dapat digunakan kembali, cukup mengubah fungsi sekali dan penggunaan lainya akan ikut berubah.

dituliskan :
tipe_data nama_fungsi () {
  //perintah yang dijalankan saat fungsi dipanggil
}

- Pemanggilan function : nama_fungsi ();
- Function dengan parameter : mengirim data saat menjalankan fungsi.

tipe_data nama_fungsi (tipe_data nama_parameter) {
   // perintah yang dijalankan saat fungsi dipanggil
}

- Function dengan return : memberi nilai fungsi saat dipanggil.

tipe_data nama_fungsi (tipe_data nama_parameter) {
   //perintah yang dijalankan saat fungsi dipanggil 
return nilai;
}