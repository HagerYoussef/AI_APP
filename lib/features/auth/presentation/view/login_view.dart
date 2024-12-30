import 'package:ai_app/features/auth/presentation/view/widgets/socail_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/utils/image_paths.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../view_model/cubit/auth_cubit.dart';
import '../view_model/cubit/auth_states.dart';
import 'widgets/email_field.dart';
import 'widgets/forget_email_button.dart';
import 'widgets/auth_button.dart';
import 'widgets/header_text.dart';
import 'widgets/password_field.dart';
import 'widgets/register_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'Login Screen';

  Future<void> _saveLoginState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (_) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            _saveLoginState();
            Navigator.pushReplacementNamed(context, 'Home Page');
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تحقق من الايميل اوالباسورد"),backgroundColor: Colors.red,),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorApp.white_color,
            body: Padding(
              padding: EdgeInsets.only(top: 94.h),
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      ImagePaths.background,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Align(
                              alignment: AlignmentDirectional.topStart,
                              child: HeaderText(
                                title: AppLocalizations.of(context)!.translate('LogIn'),
                                subtitle: AppLocalizations.of(context)!.translate('we'),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          EmailField(controller: emailController),
                          SizedBox(height: 20.h),
                          PasswordField(controller: passwordController),
                          SizedBox(height: 10.h),
                          ForgotAndResendButton(
                            text: AppLocalizations.of(context)!.translate('forget'),
                            onPressed: () {
                              Navigator.pushNamed(context, 'Forget Screen');
                            },
                          ),
                          SizedBox(height: 40.h),
                          AuthButton(
                            isLoading: state is AuthLoading,
                            onTap: () async {
                              final email = emailController.text;
                              final password = passwordController.text;
                              await context.read<AuthCubit>().login(email, password);
                            },
                            buttonText: AppLocalizations.of(context)!.translate('LogIn'),
                          ),
                          SizedBox(height: 20.h),
                          const RegisterButton(),
                          SizedBox(height: 60.h),
                          SocialButtons(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
