import 'package:ai_app/features/payment/presenation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessPayment extends StatelessWidget {
  static const String routeName = 'Success Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90.h),

            Image.asset(
              'assets/images/payment/sucess.png',

              height: 262.06.h,
              width: 215.47.w,
            ),
            SizedBox(height: 20.h),

            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [

                  Color(0xFF1C51A0),
                  Color(0xFF0B2651),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds),
              child: Text(
                "Payment Successful",
                style: TextStyle(
                  fontSize: 33.sp,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Cairo',
                  color: Colors.white,
                  height: 61.84 / 33,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            SizedBox(height: 10.h),


        Text(
          "After we receive the payment,\n you will receive a confirmation email,\n Transaction ID: 39250623782",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            color: Color(0xff5055518C),
            fontStyle: FontStyle.italic,
            height: 19.36 / 16,
            decoration: TextDecoration.none,
            decorationColor: Colors.transparent,
          ),
        ),

            SizedBox(height: 30.h),

            CustomButton(
              onPressed: () {},
              text: 'Back to Home', w: 317.w,
            ),
            SizedBox(height: 30.h),
            Image.asset("assets/images/payment/button_white.png",height: 61.h,width: 317.w,)
          ],
        ),
      ),
    );
  }
}
