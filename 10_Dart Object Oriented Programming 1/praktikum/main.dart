import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  final Hewan kura_kura = Hewan(4);
  final Hewan marmut = Hewan(2);
  final Hewan ikan = Hewan(5);

  final Mobil tosha = Mobil(50);

  tosha.tambahMuatan(kura_kura);
  tosha.tambahMuatan(marmut);
  tosha.tambahMuatan(ikan);

  print('Total Seluruh Muatan Hewan : ${tosha.totalMuatan()} Kg');
}
