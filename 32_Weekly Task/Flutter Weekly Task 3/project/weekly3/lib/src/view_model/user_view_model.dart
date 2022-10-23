import 'package:flutter/material.dart';
import 'package:weekly3/src/model/data_user_model.dart';

class UserViewModel with ChangeNotifier {
  final List<DataUserModel> _dataUserModel = [];

  List<DataUserModel> get dataUser => List.unmodifiable(_dataUserModel);

  void addUser(DataUserModel dataUserModel) {
    _dataUserModel.add(dataUserModel);
    notifyListeners();
  }
}
