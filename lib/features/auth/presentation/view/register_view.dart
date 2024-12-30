import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';
import '../view_model/cubit/auth_cubit.dart';
import '../view_model/cubit/auth_states.dart';
import 'widgets/full_name.dart';
import 'widgets/email_field.dart';
import 'widgets/password_field.dart';
import 'widgets/auth_button.dart';
import 'widgets/header_text.dart';
import 'widgets/socail_buttons.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const String routeName = 'Register Screen';

  @override
  Widget build(BuildContext context) {
    final fullnameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BlocProvider(
      create: (_) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) async {
          if (state is AuthSuccess) {

            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('isLoggedIn', true);
            prefs.setString('userName', fullnameController.text);
            prefs.setString('email', emailController.text);

            Navigator.pushNamed(context, 'Home Page');
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("فشلت عمليه تسجيل الدخول من فضلك حاول مره اخري"),backgroundColor: Colors.red,),
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
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: HeaderText(
                                title: AppLocalizations.of(context)!.translate('Register'),
                                subtitle: AppLocalizations.of(context)!.translate('we'),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          FullNameField(controller: fullnameController),
                          SizedBox(height: 20.h),
                          EmailField(controller: emailController),
                          SizedBox(height: 20.h),
                          PasswordField(controller: passwordController),
                          SizedBox(height: 20.h),
                          AuthButton(
                            isLoading: state is AuthLoading,
                            onTap: () async {
                              final fullname = fullnameController.text;
                              final email = emailController.text;
                              final password = passwordController.text;
                              await context.read<AuthCubit>().register(fullname, email, password);
                            },
                            buttonText: AppLocalizations.of(context)!.translate('Register'),
                          ),
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
