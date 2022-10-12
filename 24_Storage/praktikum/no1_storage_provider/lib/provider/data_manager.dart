import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataManager extends ChangeNotifier {
  late bool isLoginn;
  late SharedPreferences dataLogin;
  String name = '';
  String email = '';

  Future isLogin({required String key}) async {
    dataLogin = await SharedPreferences.getInstance();
    isLoginn = dataLogin.getBool(key) ?? true;
    notifyListeners();
  }

  Future writeCache({required String key, value}) async {
    dataLogin = await SharedPreferences.getInstance();
    dataLogin.setString(key, value);
    notifyListeners();
  }

  Future saveCache({required String key, value}) async {
    dataLogin = await SharedPreferences.getInstance();
    dataLogin.setBool(key, value);
    notifyListeners();
  }

  Future readNameCache({required String key}) async {
    dataLogin = await SharedPreferences.getInstance();
    name = dataLogin.getString(key).toString();
    notifyListeners();
  }

  Future readMailCache({required String key}) async {
    dataLogin = await SharedPreferences.getInstance();
    email = dataLogin.getString(key).toString();
    notifyListeners();
  }

  Future deleteCache({
    required String key,
  }) async {
    dataLogin = await SharedPreferences.getInstance();
    dataLogin.remove(key);
    notifyListeners();
  }
}
