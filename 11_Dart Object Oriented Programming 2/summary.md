# 11_Dart Object Oriented Programming 2

## Poin yang dipelajari :

### Constructor 
Constructor adalah fungsi spesial dari sebuah kelas yang digunakan untuk membuat objek. Sesuai namanya, constructor digunakan untuk mengonstruksi objek baru, semua properti pada kelas tersebut harus memiliki nilai. Kita dapat langsung menginisialisasi pada properti tertentu atau menginisialisasinya melalui constructor.

### Inheritance
Inheritance adalah kemampuan suatu program untuk membuat kelas baru dari kelas yang ada. Konsep inheritance ini bisa dibayangkan layaknya seorang anak mewarisi sifat dari orang tuanya. Di dalam OOP kelas yang menurunkan sifat disebut sebagai kelas induk (parent class/superclass) sementara kelas yang mewarisi kelas induknya disebut sebagai kelas anak (child class/subclass).

### Method Overriding 
Untuk menuliskan ulang method yang ada pada superclass dan bertujuan agar class memiliki method yang sama dengan proses yang berbeda. Untuk melakukan Overriding :
- Dilakukan pada class yang melakukan inheritance,
- Method sudah ada pada class induk,
- Method ditulis ulang seperti membuat method baru pada class anak,
- Menambahkan tanda '@override' dibaris sebelum method dibuat.

### Interface 
Berupa suatu class yang menunjukan method apa saja yang ada dalam suatu class. Seluruh method wajib di override dan interface digunakan dengan menggunakan implements seperti class yang melakukan implements wajib melakukan override semua method yang ada pada class induk.

### Abstract Class
Merupakan gambaran umum dari sebuah kelas. Ia tidak dapat direalisasikan dalam sebuah objek. Pada modul sebelumnya kita sudah mempunyai kelas Animal. Secara harfiah hewan merupakan sebuah sifat. Kita tidak tahu bagaimana objek hewan tersebut. Kita bisa melihat bentuk kucing, ikan, dan burung namun tidak untuk hewan. Maka dari itu konsep abstract class perlu diterapkan agar kelas Animal tidak dapat direalisasikan dalam bentuk objek namun tetap dapat menurunkan sifatnya kepada kelas turunannya.

### Polymorphism 
Sederhananya objek dapat memiliki bentuk atau implementasi yang berbeda-beda pada satu metode yang sama. Semua hewan bernafas, namun tentu kucing dan ikan memiliki cara bernafas yang berbeda. Perbedaan bentuk atau cara pernafasan tersebut merupakan contoh dari polymorphism.

### Generics
Secara umum generic merupakan konsep yang digunakan untuk menentukan tipe data yang akan kita gunakan. Kita bisa mengganti tipe parameter generic pada Dart dengan tipe yang lebih spesifik dengan menentukan instance dari tipe tersebut.