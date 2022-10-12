import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  String name = '';
  String email = '';
  late bool isLogin;

  dynamic getData({
    required String key,
  }) async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLogin = sharedPreferences.getBool(key) ?? true;
  }

  static saveData({required key, dynamic value}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(key, value);
  }

  static Future writeData({
    required String key,
    value,
  }) async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is bool) return await sharedPreferences.setBool(key, value);
    return await sharedPreferences.setDouble(key, value);
  }

  static Future readNameData({required String key}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(key).toString();
  }

  static Future readMailData({required String key}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getString(key).toString();
  }

  static Future removeData({required String key}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }
}
