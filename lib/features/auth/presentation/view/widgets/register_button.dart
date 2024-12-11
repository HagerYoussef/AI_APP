import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: AppLocalizations.of(context)!.translate('dont') ,
          style: TextStyle(
            color: ColorApp.white_color,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          children: [
            TextSpan(
              text: AppLocalizations.of(context)!.translate('Register') ,
              style: TextStyle(
                color:  ColorApp.home_color,
                fontSize: 15.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushReplacementNamed(context, 'Register Screen');
                },
            ),
          ],
        ),
      ),
    );
  }
}
