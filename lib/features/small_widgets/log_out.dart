import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/localization/app_localization.dart';
import '../../core/themes/colors.dart';

class LogOutDialog extends StatelessWidget {
  static const String routeName = 'Logout Screen';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      contentPadding:  EdgeInsets.all(20.h),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

           Text(
             AppLocalizations.of(context)!.translate('logout'),
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: ColorApp.color35,
            ),
          ),
           SizedBox(height: 10.h),

          Text(
            AppLocalizations.of(context)!.translate('are'),
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
           SizedBox(height: 20.h),

          GestureDetector(
            onTap: () {

              print("Logged out");
            },
            child: Container(
              width: double.infinity,
              padding:  EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient:  LinearGradient(
                  colors: [ColorApp.color35, ColorApp.color36],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child:  Center(
                child: Text(
                  AppLocalizations.of(context)!.translate('confirm2'),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
