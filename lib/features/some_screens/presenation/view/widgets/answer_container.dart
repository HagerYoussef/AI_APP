import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerContainer extends StatelessWidget {
  final String text;

  const AnswerContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367.w,
      height: 256.h,
      padding: EdgeInsets.symmetric(
        horizontal: 31.w,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffa8b9d5),
        borderRadius: BorderRadius.circular(10.r),
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4069AA),
            width: 4,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: 'Cairo',
          color: const Color(0xff505551),
        ),
      ),
    );
  }
}
