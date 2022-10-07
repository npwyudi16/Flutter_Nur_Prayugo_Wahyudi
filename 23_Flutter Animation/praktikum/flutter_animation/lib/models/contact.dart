class Contact {
  final String nama;
  final String nomor;

  Contact({required this.nama, required this.nomor});

  List<Object> get props {
    return [
      nama,
      nomor,
    ];
  }
}
