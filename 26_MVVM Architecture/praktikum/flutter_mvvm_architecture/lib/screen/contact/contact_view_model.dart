import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/model/contact_model.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contacts = [];

  List<Contact> get name => List.unmodifiable(_contacts);
  List<Contact> get phone => List.unmodifiable(_contacts);

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
