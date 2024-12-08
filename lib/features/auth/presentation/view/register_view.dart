import 'package:ai_app/features/auth/presentation/view/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد مكتبة ScreenUtil

import '../../../../../core/localization/app_localization.dart';
import '../../../../core/utils/image_paths.dart';
import 'widgets/email_field.dart';
import 'widgets/full_name.dart';
import 'widgets/header_text.dart';
import 'login_view.dart';
import 'widgets/password_field.dart';
import 'widgets/socail_buttons.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const String routeName = 'Register Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 94.h),
        child: Stack(children: [
          Positioned(
            child: Image.asset(
              ImagePaths.background,
              fit: BoxFit.cover, width: double.infinity,
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
                      padding: const EdgeInsets.all(8.0),
                      child: HeaderText(
                        title: AppLocalizations.of(context)!.translate('Register') ,
                        subtitle: AppLocalizations.of(context)!.translate('we') ,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  const FullNameField(),
                  SizedBox(height: 20.h),
                  const EmailField(),
                  SizedBox(height: 20.h),
                  const PasswordField(),
                  SizedBox(height: 20.h),
                  AuthButton(
                    onTap: () {
                      Navigator.pushNamed(context, 'Home Screen');
                    },
                    buttonText: AppLocalizations.of(context)!.translate('Register') ,
                  ),
                  SizedBox(height: 60.h),
                  const SocialButtons(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
