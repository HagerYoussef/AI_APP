
import 'package:ai_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "Payment2 Screen");
        },
        child: Container(
          width: 315.w,
          height: 54.68.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorApp.color26,
                ColorApp.color27,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(60.r),
            ),
          ),
          child:  Center(
            child: Text(
              'Continue',
              style: TextStyle(
                color: ColorApp.white_color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
