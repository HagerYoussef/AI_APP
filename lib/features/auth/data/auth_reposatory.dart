import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/email_model.dart';
import '../models/forget_password_model.dart';
import '../models/register_model.dart';

class AuthRepository {
  final String loginUrl = 'https://arab-ai.vercel.app/arab/api/auth/login';
  final String registerUrl = 'https://arab-ai.vercel.app/arab/api/auth/signup';
  final String forgetUrl = 'https://arab-ai.vercel.app/arab/api/auth/forgotPassword';
  final String verifyUrl = 'https://arab-ai.vercel.app/arab/api/auth/verifyResetCode';
  final String logoutUrl = 'https://arab-ai.vercel.app/arab/api/auth/logout'; 

  Future<Map<String, dynamic>> login(EmailModel user) async {
    final response = await http.post(
      Uri.parse(loginUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }


  Future<bool> register(RegisterModel user) async {
    final response = await http.post(
      Uri.parse(registerUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to register');
    }
  }

  Future<void> forgetPassword(ForgetPasswordModel forgetModel) async {
    final response = await http.post(
      Uri.parse(forgetUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(forgetModel.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to send reset password email: ${response.body}");
    }
  }


  Future<bool> verifyResetCode(String code) async {
    final response = await http.post(
      Uri.parse(verifyUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'code': code}),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData['success'] == true;
    } else {
      throw Exception('فشل الاتصال بالـ API');
    }
  }


}
