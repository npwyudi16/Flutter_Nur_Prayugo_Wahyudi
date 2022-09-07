import 'mobil.dart';

void main(List<String> args) {
  var muatanHewan = Mobil();
  print('Muatan Max Mobil adalah : ${muatanHewan.kapasitas} kg');
  print('List Hewan yang akan di angkut : ${muatanHewan.muatan}');
  print('Total Berat Hewan sebelum di angkut : ${muatanHewan.tambahMuatan} kg');

  muatanHewan.totalMuatan();
}
