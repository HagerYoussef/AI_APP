import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/auth/presentation/view/widgets/socail_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد المكتبة
import '../../../../core/localization/app_localization.dart'; // تأكد من أن لديك ملف اللغات

import 'register_view.dart';
import 'widgets/email_field.dart';
import 'widgets/forget_email_button.dart';
import 'widgets/auth_button.dart';
import 'widgets/header_text.dart';
import 'widgets/password_field.dart';
import 'widgets/register_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'Login Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: HeaderText(
                          title: AppLocalizations.of(context)!.translate('LogIn'),
                          subtitle: AppLocalizations.of(context)!.translate('we') ,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    const EmailField(),
                    SizedBox(height: 20.h),
                    const PasswordField(),
                    SizedBox(height: 10.h),
                    ForgotAndResendButton(
                      text: AppLocalizations.of(context)!.translate('forget') ,
                          onPressed: () {
                        Navigator.pushNamed(context, 'Forget Screen');
                      },
                    ),
                    SizedBox(height: 40.h),
                    AuthButton(
                      onTap: () {
                        Navigator.pushNamed(context, 'Home Screen');
                      },
                      buttonText: AppLocalizations.of(context)!.translate('LogIn')
                    ),
                    SizedBox(height: 20.h),
                    const RegisterButton(),
                    SizedBox(height: 20.h),
                    const SocialButtons(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
