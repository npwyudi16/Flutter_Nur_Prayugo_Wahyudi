class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      email: data['email'],
      avatar: data['avatar'],
    );
  }
}
