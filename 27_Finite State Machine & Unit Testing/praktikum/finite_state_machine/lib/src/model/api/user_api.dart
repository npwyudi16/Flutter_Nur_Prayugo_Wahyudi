import 'package:dio/dio.dart';
import 'package:finite_state_machine/src/model/user_model.dart';

class UserAPI {
  final Dio dio = Dio();

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get('https://reqres.in/api/users');
      if (response.statusCode != 200) {
        throw Exception('Fetch data users failed');
      }
      final List data = response.data["data"];
      return data.map((e) => UserModel.fromJson(e)).toList();
    } on DioError catch (_) {
      rethrow;
    }
  }
}
