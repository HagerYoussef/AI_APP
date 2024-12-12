import 'package:ai_app/features/payment/presenation/view/widgets/payment_back_button.dart';
import 'package:ai_app/features/payment/presenation/view/widgets/payment_button.dart';
import 'package:ai_app/features/payment/presenation/view/widgets/payment_option_widget.dart';
import 'package:ai_app/features/payment/presenation/view/widgets/payment_plan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/image_paths.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = 'Payment Screen';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Container(
          width: 428.w,
          height: 932.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImagePaths.back_ground
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      width: 392.w,
                      height: 915.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(ImagePaths.blur),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          children: [
                            PaymentBackButton(),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 55.h),
                                  child: Image.asset(
                                   ImagePaths.per,
                                    height: 55.45.h,
                                    width: 157.w,
                                  ),
                                ),
                                Image.asset(
                                  ImagePaths.woman,
                                  height: 357.h,
                                  width: 203.w,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Image.asset(ImagePaths.some),
                            SizedBox(height: 20.h),
                            PaymentOptionWidget(),
                            SizedBox(height: 20.h),
                            PaymentPlanWidget(),
                            Expanded(child: PaymentButton())
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





