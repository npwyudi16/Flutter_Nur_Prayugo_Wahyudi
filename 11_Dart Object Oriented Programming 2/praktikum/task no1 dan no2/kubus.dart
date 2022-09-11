import 'bangunruang.dart';

class Kubus extends BangunRuang {
  Kubus() {
    sisi = 9.5;
  }

  @override
  void volume() {
    double hitungVolumeKubus = sisi * sisi * sisi;
    print(
        'Hasil Perhitungan Volume Kubus dari $sisi x $sisi x $sisi : ${hitungVolumeKubus} m³');
    super.volume();
  }
}
