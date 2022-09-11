import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  late int x = 10;
  late int y = 12;

// Faktor persekutuan terbesar (FPB) merupakan dua bilangan bulat positif terbesar yang dapat membagi habis kedua bilangan tersebut.

  @override
  hasil() {
    int? hasilFPB, kurangDari, lebihDari;
    if (x <= y) {
      kurangDari = x;
    } else {
      kurangDari = y;
    }

    if (x >= y) {
      lebihDari = x;
    } else {
      lebihDari = y;
    }

    for (int i = 1; i < kurangDari; i++) {
      if (kurangDari % i == 0 && lebihDari % i == 0) {
        hasilFPB = i;
      }
    }
    print('Hasil FPB dari $x dan $y adalah $hasilFPB');
  }
}
