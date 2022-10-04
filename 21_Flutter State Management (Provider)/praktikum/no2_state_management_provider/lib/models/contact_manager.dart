import 'package:flutter/material.dart';

import 'contact_model.dart';

class ContactManager extends ChangeNotifier {
  final _contactModel = <ContactModel>[];
  List<ContactModel> get namaKontak => List.unmodifiable(_contactModel);
  List<ContactModel> get nomorKontak => List.unmodifiable(_contactModel);

  void deleteContact(int index) {
    _contactModel.removeAt(index);
    notifyListeners();
  }

  void addContact(ContactModel contactModel) {
    _contactModel.add(contactModel);
    notifyListeners();
  }
}
