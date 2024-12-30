import 'package:flutter/material.dart';

import '../../data/auth_reposatory.dart';
import '../../models/email_model.dart';
import '../../models/register_model.dart';
import '../../models/forget_password_model.dart';
import '../../models/verify_reset_code_model.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  bool _isLoggedIn = false;
  String _errorMessage = '';
  bool _isPasswordResetEmailSent = false;
  bool _isCodeVerified = false;

  bool get isLoggedIn => _isLoggedIn;
  String get errorMessage => _errorMessage;
  bool get isPasswordResetEmailSent => _isPasswordResetEmailSent;
  bool get isCodeVerified => _isCodeVerified;  // Add this getter

  // دالة تسجيل الدخول
  Future<void> login(String email, String password) async {
    try {
      final user = EmailModel(email: email, password: password);
      final response = await _authRepository.login(user);
      _isLoggedIn = true;
      notifyListeners();
    } catch (error) {
      _isLoggedIn = false;
      _errorMessage = 'Login Failed: $error';
      notifyListeners();
    }
  }

  // دالة التسجيل
  Future<void> register(String fullname, String email, String password) async {
    try {
      final user = RegisterModel(email: email, password: password, name: fullname);
      final response = await _authRepository.register(user);
      _isLoggedIn = true;
      notifyListeners();
    } catch (error) {
      _isLoggedIn = false;
      _errorMessage = 'Registration Failed: $error';
      notifyListeners();
    }
  }

  // دالة إرسال طلب تغيير كلمة المرور
  Future<void> forgetPassword(String email) async {
    try {
      final forgetModel = ForgetPasswordModel(email: email);
      await _authRepository.forgetPassword(forgetModel);
      _isPasswordResetEmailSent = true;
      notifyListeners();
    } catch (error) {
      _isPasswordResetEmailSent = false;
      _errorMessage = "فشل إرسال البريد الإلكتروني: $error";
      notifyListeners();
    }
  }


  Future<void> verifyResetCode(String code) async {
    try {
      _isCodeVerified = await _authRepository.verifyResetCode(code);
      if (_isCodeVerified) {

        _errorMessage = '';
      } else {
        _errorMessage = 'الكود غير صحيح، حاول مرة أخرى';
      }
      notifyListeners();
    } catch (error) {
      _isCodeVerified = false;
      _errorMessage = 'فشل التحقق من الكود: $error';
      notifyListeners();
    }
  }
}
