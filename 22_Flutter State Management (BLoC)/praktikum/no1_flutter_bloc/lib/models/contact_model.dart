class Contact {
  final String name;
  final String number;
  late final String email;

  Contact({
    required this.name,
    required this.number,
  });

  List<Object> get props {
    return [
      name,
      number,
    ];
  }
}
