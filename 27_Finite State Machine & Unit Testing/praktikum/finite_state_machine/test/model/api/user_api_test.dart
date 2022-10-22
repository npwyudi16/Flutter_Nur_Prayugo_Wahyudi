import 'package:finite_state_machine/src/model/api/user_api.dart';
import 'package:finite_state_machine/src/model/user_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'user_api_test.mocks.dart';

@GenerateMocks([UserAPI])
void main() {
  group('UserAPI', () {
    MockUserAPI userAPI = MockUserAPI();
    test('Test Fetch User', () async {
      when(userAPI.fetchUser()).thenAnswer((_) async => <UserModel>[
            UserModel(
              id: 1,
              email: "george.bluth@reqres.in",
              firstName: "George",
              lastName: "Bluth",
              avatar: "https://reqres.in/img/faces/1-image.jpg",
            ),
          ]);
      final List<UserModel> users = await UserAPI().fetchUser();
      expect(users.isNotEmpty, true);
    });
  });
}
