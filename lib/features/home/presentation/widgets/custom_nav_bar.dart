import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        gradient: const LinearGradient(
          colors: [Color(0xFF092049), Color(0xFF19488E)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(
          color: const Color(0xFF0F336A),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              "assets/images/home/home.png",
              width: 89.w,
              height: 72.h,
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/home/robot.png",
              width: 25.w,
              height: 25.h,
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/home/person.png",
              width: 25.w,
              height: 25.h,
            ),
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}
