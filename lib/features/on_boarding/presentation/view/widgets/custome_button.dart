import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  CustomButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 382.w,
        height: 61.h,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:  LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              ColorApp.home_color,
              ColorApp.color22,
            ],
          ),
        ),
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.translate('start'),
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Robot',
              fontWeight: FontWeight.w700,
              color: ColorApp.white_color,
            ),
          ),
        ),
      ),
    );
  }
}
