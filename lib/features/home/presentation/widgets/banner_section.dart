import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerSection extends StatelessWidget {
  const BannerSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Container(
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: const DecorationImage(
            image: AssetImage('assets/images/home/home2.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
