import 'package:ai_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentOptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356.w,
      height: 59.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color:  ColorApp.home_color,
          width: 2.w,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 125.w,
            height: 17.h,
            child: Text(
              'Free Trial Enable',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                fontSize: 14.sp,
                height: 17.07 / 14,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 91.w,
            height: 36.h,
            child: Transform.scale(
              scaleX: 1.6,
              scaleY: 1.1,
              child: Switch(
                value: true,
                onChanged: (bool value) {},
                activeColor: Colors.white,
                inactiveThumbColor:  ColorApp.color28,
                inactiveTrackColor:  ColorApp.color28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
