import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotAndResendButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ForgotAndResendButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Cairo',
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
