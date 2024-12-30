import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class FullNameField extends StatelessWidget {
  final TextEditingController controller;

  const FullNameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 50.h,
      child: TextField(

        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(8.w),
            child: Image.asset(
              ImagePaths.person,
              width: 24.w,
              height: 15.89.h,
            ),
          ),
          hintText: AppLocalizations.of(context)!.translate('full'),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: ColorApp.color4,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
        ),
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
