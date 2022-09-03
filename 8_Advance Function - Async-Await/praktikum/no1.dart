import 'dart:io';

void main() async {
  print('Masukan Pengali : ');
  int? pengali = int.parse(stdin.readLineSync()!);
  pengalian([
    1,
    2,
    3,
  ], pengali)
      .then((value) => print(value));
}

Future<List<int>> pengalian(List<int> data, int pengali) {
  return Future.delayed(
      Duration(seconds: 1), () => data.map((e) => e * pengali).toList());
}
