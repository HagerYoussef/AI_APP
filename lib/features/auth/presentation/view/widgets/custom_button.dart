import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 249.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        color: ColorApp.white_color,
      ),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, 'Register Screen'),
        borderRadius: BorderRadius.circular(9.r),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.translate('Register'),
            style: TextStyle(
              color:  ColorApp.color3,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
