import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/payment/presenation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';
import '../../../../profile/view_model/cubit/theme_cubit.dart';

class SuccessPayment extends StatelessWidget {
  static const String routeName = 'Success Screen';


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
      return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 90.h),

            Image.asset(
             ImagePaths.image11,

              height: 262.06.h,
              width: 215.47.w,
            ),
            SizedBox(height: 20.h),

          isDarkMode
              ? Text(
            "Payment Successful",
            style: TextStyle(
              fontSize: 33.sp,
              fontWeight: FontWeight.w900,
              fontFamily: 'Cairo',
              color: ColorApp.white_color,
            ),
          )
              : ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                ColorApp.color30,
                ColorApp.color31,
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
             color: state == ThemeState.dark
          ? ColorApp.white_color
              : ColorApp.color23.withOpacity(.55),
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
            Image.asset(ImagePaths.image12,height: 61.h,width: 317.w,)
          ],
        ),
      ),
    );
  });
}}
