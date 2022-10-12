# 25_Introduction REST API - JSON serialization deserialization

## Poin yang dipelajari :

### REST API
Representational State Transfer Application Programming Interface adalah yang memisahkan tampilan dengan proses bisnis . Bagian tampilan dengan proses bisnis yang digunakan untuk mengirimkan data melalui HTTP Request.

### HTTP 
Protokol yang digunakan untuk mengirimkan data pada Internet dan biasanya data tersebut berbentuk media web. HTTP bekerja dengan pola komunikasi Client mengirimkan Request ke Server dan diolah serta membalas response dari Request tersebut.

Struktur Request :
- URL : Alamat yang dapat diakses
- Method (GET , POST , PUT , DELETE) : memnunjukan aksi yang diinginkan
- Header : Informasi tambahan terkait informasi yang kirimkan
- Body : Data yang disertakan bersama Request

Struktur Response :
- Status Code : Kode yang mewakili keseluruhan response baik yang sukses maupun yang gagal
- Header : Informasi tambahan terkait response yang diberikan
- Body : Data yang disertakan bersama Response

### Dio 
Merupakan package yang ada di pub.dev yang digunakan sebagai HTTP Client dan dimanfaatkan untuk penggunaan REST API. untuk menggunakan-nya harus menambahkan ke dependency di pubspec.yaml .

### Serialisasi JSON
Mengubah Struktur data ke dalam bentuk JSON yang menggunakan fungsi jsonEncode dari package dart:convert

### Deserialisasi JSON 
Kebalikan-nya dari Serialisasi JSON yaitu mengubah JSON ke dalam bentuk struktur data yang menggunakan fungsi jsonDecode dari package dart:convert