# 28_UI Testing

## Poin yang dipelajari :

### UI Testing
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. Pada Flutter disebut juga sebagai widget testing sehingga pengujian dilakukan pada widgets dengan cara menuliskan script yang dapat dijalankan secara otomatis. 

### Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai, 
- Memastikan seluruh interaksi dapat diterima dengan baik,
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

### Melakukan Testing
Menuliskan script testing yang diletakan pada folder test dan nama file harus diikuti dengan akhiran _test.dart. Penulisan script pada tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing dan setiap skenarion pengjuan-nya disebut test case. Test Case diawali dengan testWidget dan diberi judul selanjutnya menjalankan perintah flutter test pada terminal dan akan terlihat hasilnya.