

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 249.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF0D2C5C),
            Color(0xFF19488E),
          ],
        ),
      ),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, 'Login Screen'),
        borderRadius: BorderRadius.circular(9.r),
        child: Center(
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
