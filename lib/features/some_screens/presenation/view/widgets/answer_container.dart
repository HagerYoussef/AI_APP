import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';

class AnswerContainer extends StatelessWidget {
  final String text;
  final String? imageUrl;

  const AnswerContainer({
    Key? key,
    required this.text,
    this.imageUrl,
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
        color: ColorApp.color9,
        borderRadius: BorderRadius.circular(10.r),
        border: Border(
          bottom: BorderSide(
            color: ColorApp.color10,
            width: 4.w,
          ),
        ),
      ),
      child: imageUrl == null || imageUrl!.isEmpty
          ? Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: 'Cairo',
          color: ColorApp.color11,
        ),
      )
          : ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Image.network(
          imageUrl!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
