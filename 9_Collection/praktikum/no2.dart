void main() {
  List<dynamic> a = [
    [
      1,
      2,
      3,
    ],
    ['mesi', 'ronaldo', 'neymar']
  ];
  List<dynamic> b = [
    [4, 5, 6],
    ['burung', 'kucing', 'kura-kura']
  ];
  var join = a + b;
  Map<int, dynamic> hasil_join = join.asMap();
  print(hasil_join);
}
