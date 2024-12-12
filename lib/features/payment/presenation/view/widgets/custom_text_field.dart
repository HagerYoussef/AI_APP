import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';
import '../../../../profile/view_model/cubit/theme_cubit.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return SizedBox(
        width: 326.w,
        height: 61.h,
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color:
              state == ThemeState.dark ? ColorApp.white_color.withOpacity(.55) : ColorApp.color23,
              
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            suffixIcon: suffixIcon,
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      );
    });} }

