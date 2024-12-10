import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLabel extends StatelessWidget {
  final String title;

  const CustomLabel({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xff092147),
        fontFamily: 'Cairo',
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
