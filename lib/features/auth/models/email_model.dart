class EmailModel {
  final String email;
  final String password;

  EmailModel({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory EmailModel.fromJson(Map<String, dynamic> json) {
    return EmailModel(
      email: json['email'],
      password: json['password'],
    );
  }
}
