import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  static SharedPreferences? sharedPreferences;
  String name = '';
  String email = '';
  late bool isLoginn;

  DataCubit() : super(DataInitial());

  Future isLogin({required String key}) async {
    emit(DataInitial());
    sharedPreferences = await SharedPreferences.getInstance();
    isLoginn = sharedPreferences!.getBool(key) ?? true;
  }

  Future writeCache({required String key, value}) async {
    emit(DataLoading());
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences!.setString(key, value);
  }

  Future saveCache({required String key, value}) async {
    emit(DataLogin());
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences!.setBool(key, value);
  }

  Future readNameCache({required String key}) async {
    emit(DataRead());
    sharedPreferences = await SharedPreferences.getInstance();
    name = sharedPreferences!.getString(key).toString();
  }

  Future readMailCache({required String key}) async {
    emit(DataRead());
    sharedPreferences = await SharedPreferences.getInstance();
    email = sharedPreferences!.getString(key).toString();
  }

  Future deleteCache({
    required String key,
  }) async {
    emit(DataDeleted());
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences!.remove(key);
  }
}
