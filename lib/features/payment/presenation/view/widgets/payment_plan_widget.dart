import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';

class PaymentPlanWidget extends StatefulWidget {
  @override
  _PaymentPlanWidgetState createState() => _PaymentPlanWidgetState();
}
class _PaymentPlanWidgetState extends State<PaymentPlanWidget> {
  bool isSelected1 = false;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 356.w,
          height: 61.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: isSelected1 ?  ColorApp.color29 : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color:  ColorApp.home_color,
              width: 2.w,
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected1 = !isSelected1;
                    if (isSelected1) {
                      isSelected2 = false;
                    }
                  });
                },
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: isSelected1 ?  ColorApp.color32 : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorApp.white_color,
                      width: 2.w,
                    ),
                  ),
                  child: isSelected1
                      ?  Icon(Icons.check, color: ColorApp.white_color, size: 9)
                      : null,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Container(
                  width: 300.w,
                  height: 21.h,
                  child: Text(
                    'Free 3-day trial, then \$3.99/month',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Container(
          width: 356.w,
          height: 61.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: isSelected2?  ColorApp.color29 : Colors.transparent,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color:  ColorApp.home_color,
              width: 2.w,
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected2 = !isSelected2;
                    if (isSelected2) {
                      isSelected1 = false;
                    }
                  });
                },
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: isSelected2 ?  ColorApp.color32 : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorApp.white_color,
                      width: 2.w,
                    ),
                  ),
                  child: isSelected2
                      ?  Icon(Icons.check, color: ColorApp.white_color, size: 9)
                      : null,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Container(
                  width: 300.w,
                  height: 21.h,
                  child: Text(
                    'Free 3-day trial, then \$3.99/month',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
