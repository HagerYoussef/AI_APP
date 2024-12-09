import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;

  const FeatureCard({
    required this.title,
    required this.description,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167.w,
      height: 120.h,
      padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: const Color(0xC9092147),
          width: 0.3,
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xBA256DD3),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Image.asset(
              iconPath,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'Inter',
              fontSize: 14.sp,
              fontStyle: FontStyle.italic,
              color: const Color(0xff092147),
            ),
          ),
          SizedBox(height: 4.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  color: const Color(0xff2B2B2BE0).withOpacity(.88),
                ),
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
