import 'dart:io';

void main() {
  stdout.write('Masukan Nilai: ');
  var nilai = num.parse(stdin.readLineSync()!);

  if (nilai > 70) {
    print('A');
  } else if (nilai > 40) {
    print('B');
  } else if (nilai > 0) {
    print('C');
  } else {
    print('');
  }
}
