import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 249.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        gradient:  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorApp.color1,
            ColorApp.color2
          ],
        ),
      ),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, 'Login Screen'),
        borderRadius: BorderRadius.circular(9.r),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.translate('Login') ,
            style: TextStyle(
              color: ColorApp.white_color,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
