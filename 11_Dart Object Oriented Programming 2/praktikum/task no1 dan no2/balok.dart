import 'bangunruang.dart';

class Balok extends BangunRuang {
  Balok() {
    panjang = 8.5;
    lebar = 10;
    tinggi = 12;
  }

  @override
  void volume() {
    double hitungVolumeBalok = panjang * lebar * tinggi;
    print(
        'Hasil Perhitungan Volume Balok dari $panjang x $lebar x $tinggi : ${hitungVolumeBalok} m³');
    super.volume();
  }
}
