import 'package:finite_state_machine/src/model/api/user_api.dart';
import 'package:finite_state_machine/src/model/user_model.dart';
import 'package:flutter/material.dart';

enum UserViewState {
  none,
  loading,
  loaded,
  error,
}

class UserViewModel with ChangeNotifier {
  final UserAPI _userApi = UserAPI();

  UserViewState _state = UserViewState.none;
  UserViewState get state => _state;

  late List<UserModel> _users;

  List<UserModel> get user => _users;

  void changeState(UserViewState s) {
    _state = s;
    notifyListeners();
  }

  Future<void> getAllUser() async {
    changeState(UserViewState.loading);
    try {
      final u = await _userApi.fetchUser();
      _users = u;
      notifyListeners();

      changeState(UserViewState.loaded);
    } catch (_) {
      changeState(UserViewState.error);
    }
  }
}
