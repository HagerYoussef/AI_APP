import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../core/themes/colors.dart';

class NextButton extends StatelessWidget {
  final int currentPage;
  final int pageCount;
  final VoidCallback onTap;

  const NextButton({
    required this.currentPage,
    required this.pageCount,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLastPage = currentPage == pageCount - 1;

    return isLastPage
        ? GestureDetector(
      onTap: onTap,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          decoration: BoxDecoration(
            color:  ColorApp.color20,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    )
        : GestureDetector(
      onTap: onTap,
      child: CircularPercentIndicator(
        radius: 29.w,
        lineWidth: 3.w,
        percent: (currentPage + 1) / 4,
        progressColor: ColorApp.white_color,
        backgroundColor: ColorApp.grey,
        circularStrokeCap: CircularStrokeCap.round,
        center: Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.9),
          ),
          child: Container(
            width: 5.45.w,
            height: 10.9.h,
            child:  Directionality(
              textDirection: TextDirection.ltr,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorApp.color20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
