import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 326.w,
      height: 50.h,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              ImagePaths.email_image,
              width: 24.w,
              height: 15.89.h,
            ),
          ),
          hintText: AppLocalizations.of(context)!.translate('email') ,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color:  ColorApp.color4,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:  BorderSide(color: ColorApp.white_color),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:  BorderSide(color: ColorApp.white_color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:  BorderSide(color: ColorApp.white_color),
          ),
        ),
      ),
    );
  }
}
