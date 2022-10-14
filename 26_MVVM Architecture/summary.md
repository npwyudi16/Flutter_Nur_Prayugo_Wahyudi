# 26_MVVM Architecture

## Poin yang dipelajari :

### MVVM (Model-View ViewModel)
MVVM adalah sebuah Architecture yang memisahkan logic dengan tampilan (View) ke dalam ViewModel. 

### Keuntungan MVVM 
- Reusability 
Jika ada beberapa tampilan yang memerlukan alur logic yang sama maka dapat menggunakan ViewModel yang sama.

- Maintainbility
Mudah di maintance apabila terdapat bug karena tampilan tidak tertumpuk bersama dengan logic.

- Testability
Pengujian menjadi terpisah antara pengujian tampilan dan pengujian logic sehingga meningkatkan produktivitas pada pengujian app

### Menggunakan MVVM
- Struktur Direktori
Model memiliki 2 abgian yaitu bentuk data yang akan digunakan dan sumber dari data tersebut. Pada tiap screen diletakan dalam sebuah direktori yang didalamnya terdapat View dan ViewModel.

- Model 
Bentuk data yang akan digunakan, dibuat dalam bentuk Class. Data-data yang dimuat diletakan pada property.

- ViewModel
Menyimpan data-data dan logic yang diperlukan pada halaman screen dan jika widget lain memerlukan widget yang sama , dapat menggunakan ViewModel yang sama juga.

- Mendaftarkan ViewModel 
Menggunakan MultiProvider(Apabila menggunakan State Management Provider) agar dapat menggunakan banyak ViewModel dan MaterialApp sebagai child yang Utama.

- View 
Menggunakan StateFul Widget dan diletakan pada bagian build menggunakan getters yang ada pada ViewModel yang dapat langsung ditampilkan pada widgets.