import 'package:flutter/material.dart';

class Checklist extends ChangeNotifier {
  final List<int> _checkItems = [];

  List<int> get items => _checkItems;

  void add(int itemNo) {
    _checkItems.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _checkItems.remove(itemNo);
    notifyListeners();
  }
}
