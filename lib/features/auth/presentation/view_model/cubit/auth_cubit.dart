import 'package:ai_app/features/auth/data/auth_reposatory.dart';
import 'package:ai_app/features/auth/models/email_model.dart';
import 'package:ai_app/features/auth/models/register_model.dart';
import 'package:ai_app/features/auth/models/forget_password_model.dart';
import 'package:ai_app/features/auth/models/verify_reset_code_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository = AuthRepository();

  AuthCubit() : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    try {
      final user = EmailModel(email: email, password: password);
      final response = await _authRepository.login(user);
      emit(AuthSuccess("Login Successful"));
    } catch (error) {
      emit(AuthFailure("Login Failed: $error"));
    }
  }

  Future<void> register(String fullname, String email, String password) async {
    emit(AuthLoading());
    try {
      final user = RegisterModel(email: email, password: password, name: fullname);
      final response = await _authRepository.register(user);
      emit(AuthSuccess("Registration Successful"));
    } catch (error) {
      emit(AuthFailure("Registration Failed: $error"));
    }
  }

  Future<void> forgetPassword(String email) async {
    emit(AuthLoading());
    try {
      final forgetModel = ForgetPasswordModel(email: email);
      await _authRepository.forgetPassword(forgetModel);
      emit(AuthSuccess("Password Reset Email Sent"));
    } catch (error) {
      emit(AuthFailure("Failed to send password reset email: $error"));
    }
  }


}
