import 'hewan.dart';

class Mobil extends Hewan {
  int kapasitas = 20; //memberi kapasitas maksimum mobil
  List muatan = [
    //memberi List hewan yang akan diangkut
    'turtle',
    'kelinci',
    'marmut',
  ];

  get tambahMuatan =>
      turtle + kelinci + marmut; //menambahkan berat hewan yang akan di angkut

  void totalMuatan() {
    //membuat method total muatan dan memberi nilai berat pada koala
    koala = 7;
    var totalAngkutan =
        tambahMuatan + koala!; //dan menambahkan total muatan dengan berat koala
    muatan.add('koala');
    print(
        'Total Seluruh Muatan Mobil setelah ditambahkan koala : ${totalAngkutan} kg'); //mencetak hasil total keseluruhan muatan
  }
}
