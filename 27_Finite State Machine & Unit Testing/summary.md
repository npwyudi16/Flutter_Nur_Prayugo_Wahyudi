# 27_Finite State Machine & Unit Testing

## Poin yang dipelajari :

### Finite State Machine
Merupakan mesin yang memiliki sejumlah state. Tiap state tersebut menunjukan apa yang terjadi sebelumnya dan Informasi finite state dapat berguna untuk menentukan seperti apa tampilan dimunculkan. 
Terdapat 3 state yang menunjukan kejadian dalam suatu proses :

- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan

Contoh Suksesnya yaitu saat IDDLE berubah menjadi RUNNING pada saat proses berjalan lalu RUNNING kembali menjadi IDDLE saat proses telah selesai.

Contoh Gagalnya yaitu saat IDDLE berubah menjadi RUNNING pada saat proses berjalan lalu RUNNING menjadi ERROR saat terjadi kegagalan setelah ERROR kembali menjadi IDDLE.

### Unit Test
Salah satu pengujian yang dilakukan pada unit dalam perangkat lunak. Unit yang dimaksud umumnya adalah fungsi atau method. Tujuan dilakukan Unit Test yaitu memastikan fungsi dapat mengolah berbagai jenis input dan memastikan hasil dari suatu fungsi atau method sudah sesuai serta dapat menjadi dokumtasi untuk aplikasi tersebut.

Ada 2 cara melakukan Unit Test :
- Manual yaitu Unit dijalankan dam dicek hasilnya secara manual.
- Automated yaitu menulis script yang dapat dijalankan berkali-kali menggunakan test runner.

Menambahkan test pada bagian dev_dependecies pada pubspec.yaml

### Mocking 
Merupakan proses yang terikat dengan sistem eksternal yang dapat mempengaruhi berjalanya pengujian dan pengaruh tersebut dapat mengganggu proses pengujian maka dari itu Mocking dilakukan untuk menghindari masalah-masalah tersebut.

Cara kerja Mocking :
Suatu object dibuat bentuk tiruanya dan bentuk tiruanya tersebut memiliki input & output yang sama dengan yang asli serta bentuk tiruan menghilangkan ketergantungan pada sistem eksternal.

Menambahkan mockito dan build_runner pada bagian dev_dependecies pada pubspec.yaml