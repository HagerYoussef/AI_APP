import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.only(top: 28.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF092147),
              Color(0xFF1E54A6),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Robot',
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
