
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
          width: 315.w,
          height: 54.68.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0B254E),
                Color(0xFF1D52A2),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(60.r),
            ),
          ),
          child: Center(
            child: Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
