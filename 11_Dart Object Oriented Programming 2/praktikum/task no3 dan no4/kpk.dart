import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  late int x = 10;
  late int y = 12;

// Kelipatan Persekutuan Kecil (KPK) adalah dua bilangan yang merupakan bilangan bulat positif terkecil yang dapat dibagi oleh kedua bilangan tersebut.

  @override
  hasil() {
    int? hasilKPK;
    for (int i = 1; i < x * y; i++) {
      final X = i % x;
      final Y = i % y;

      if (X == 0 && Y == 0) {
        hasilKPK = i;
        break;
      }
    }
    print('Hasil KPK dari $x dan $y adalah $hasilKPK');
  }
}
