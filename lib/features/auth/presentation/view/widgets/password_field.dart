import 'package:ai_app/core/themes/colors.dart';
import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 50.h,
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: _isObscured,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              ImagePaths.password,
              width: 16.w,
              height: 21.h,
            ),
          ),
          suffixIcon: IconButton(
            icon: Image.asset(
              ImagePaths.eye,
              width: 24.w,
              height: 24.h,
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
          hintText: AppLocalizations.of(context)!.translate('Password'),
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
