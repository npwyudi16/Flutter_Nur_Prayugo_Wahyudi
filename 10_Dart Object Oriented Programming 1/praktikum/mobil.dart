import 'hewan.dart';

class Mobil {
  late int kapasitas;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan hewan) {
    muatan.add(hewan);
  }

  int totalMuatan() {
    int muatanSaatIni = 0;
    for (final jumlah in muatan) {
      muatanSaatIni = muatanSaatIni + jumlah.weight;
    }
    return muatanSaatIni;
  }

  Mobil(this.kapasitas);
}
