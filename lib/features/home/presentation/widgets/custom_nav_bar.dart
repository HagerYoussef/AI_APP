import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 72.h,
      margin: EdgeInsets.only(left: 33.w, right: 33.w, bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
        gradient:  LinearGradient(
          colors: [ColorApp.color6, ColorApp.color2],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(
          color:  ColorApp.color7,
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
            ImagePaths.home,
              width: 89.w,
              height: 72.h,
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Image.asset(
              ImagePaths.robot ,
              width: 25.w,
              height: 25.h,
            ),
            onPressed: () {
Navigator.pushNamed(context, "Ai Chat");
            },
          ),
          IconButton(
            icon: Image.asset(
            ImagePaths.person2,
              width: 25.w,
              height: 25.h,
            ),
            onPressed: () {
Navigator.pushNamed(context, "Profile Screen");
            },
          ),
        ],
      ),
    );
  }
}
