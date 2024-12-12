import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';
import 'message_input_field.dart';

class EmptyBody extends StatelessWidget {
  const EmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagePaths.chat,
                            width: 210.74.w,
                            height: 236.69.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16.h),
                            child: Text(
                              AppLocalizations.of(context)!.translate('empty'),
                              style: TextStyle(
                                color: ColorApp.color13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 20.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: Text(
                              AppLocalizations.of(context)!.translate('empty2'), style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: ColorApp.color14,
                                fontSize: 14.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // حقل الإدخال في الأسفل
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: MessageInputField(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
