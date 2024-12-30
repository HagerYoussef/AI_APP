import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';

import '../view_model/cubit/auth_cubit.dart';
import '../view_model/cubit/auth_states.dart';
import 'widgets/auth_button.dart';
import 'widgets/email_field.dart';
import 'widgets/header_text.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  static const String routeName = 'Forget Screen';
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(

            const SnackBar(content: Text('تم إرسال رابط إعادة تعيين كلمة المرور!'),backgroundColor: Colors.green,),

            );
            Navigator.pushNamed(context, "Enter Code");
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
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
                      padding: EdgeInsets.all(20.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Align(
                              alignment: AlignmentDirectional.topStart,
                              child: HeaderText(
                                title: AppLocalizations.of(context)!.translate('forgetpass'),
                                subtitle: AppLocalizations.of(context)!.translate('we'),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          EmailField(controller: emailController),
                          SizedBox(height: 20.h),
                          AuthButton(
                            isLoading: state is AuthLoading,
                            onTap: () async {
                              final email = emailController.text;
                              bool isEmailValid = _isValidEmail(email);

                              if (isEmailValid) {
                                await context.read<AuthCubit>().forgetPassword(email);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('البريد الإلكتروني غير صالح.',),backgroundColor: Colors.red,),
                                );
                              }
                            },
                            buttonText: AppLocalizations.of(context)!.translate('send2'),
                          ),
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

  bool _isValidEmail(String email) {
    String pattern = r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }
}
