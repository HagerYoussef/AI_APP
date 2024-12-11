import 'package:ai_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String imagePath;

  const SocialButton({
    required this.text,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: ColorApp.white_color,

        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 24.w, height: 24.h),
           SizedBox(width: 10.w),
          Text(
            text,
            style:  TextStyle(
              color: ColorApp.white_color,
              fontSize: 15.sp,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
