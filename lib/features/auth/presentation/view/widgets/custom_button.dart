import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 249.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, 'Register Screen'),
        borderRadius: BorderRadius.circular(9.r),
        child: Center(
          child: Text(
            'Register',
            style: TextStyle(
              color: const Color(0xff294065),
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
