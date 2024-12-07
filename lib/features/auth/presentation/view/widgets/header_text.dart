import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  final String title;
  final String subtitle;

  const HeaderText({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24.sp,
            color: Colors.white,
            fontFamily: 'Cairo',
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.white,
            fontFamily: 'Inter',
          ),
        ),
      ],
    );
  }
}
