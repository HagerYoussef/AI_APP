class VerifyResetCodeModel {
  final String code;

  VerifyResetCodeModel({required this.code});

  Map<String, dynamic> toJson() {
    return {'code': code};
  }
}
