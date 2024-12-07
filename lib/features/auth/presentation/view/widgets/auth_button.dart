import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;

  const AuthButton({
    required this.onTap,
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: const Color(0xff19488E),
              fontSize: 20.sp,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
