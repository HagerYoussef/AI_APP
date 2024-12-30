class RegisterModel {
  final String name;
  final String email;
  final String password;


  RegisterModel({
    required this.name,
    required this.email,
    required this.password,

  });

  Map<String, dynamic> toJson() {
    return {
      'fullname': name,
      'email': email,
      'password': password,

    };
  }

  static RegisterModel fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      name: json['fullname'],
      email: json['email'],
      password: json['password'],

    );
  }
}
