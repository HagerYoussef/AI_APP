import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/themes/colors.dart';
import '../../../../profile/view_model/cubit/theme_cubit.dart';
import 'package:ai_app/core/utils/image_paths.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final VoidCallback onSuffixIconPressed;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.onSuffixIconPressed,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
         String suffixIconPath;
        if (Theme.of(context).brightness == Brightness.dark) {
          suffixIconPath = Localizations.localeOf(context).languageCode == 'ar'
              ? ImagePaths.share2
              : ImagePaths.shareEn;
        } else {
          suffixIconPath = Localizations.localeOf(context).languageCode == 'ar'
              ? ImagePaths.share
              : ImagePaths.shareEn2;
        }

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 26.w,
            vertical: 23.h,
          ),
          child: Container(
            width: 367.w,
            height: 63.h,
            child: TextField(
               // Handle the change in text
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: onSuffixIconPressed,
                  child: Image.asset(suffixIconPath),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(47.r),
                  borderSide: BorderSide(
                    color: state == ThemeState.dark
                        ? ColorApp.white_color
                        : ColorApp.color12,
                    width: 2.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(47.r),
                  borderSide: BorderSide(
                    color: state == ThemeState.dark
                        ? ColorApp.white_color
                        : ColorApp.color12,
                    width: 2.w,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(47.r),
                  borderSide: BorderSide(
                    color: state == ThemeState.dark
                        ? ColorApp.white_color
                        : ColorApp.color12,
                    width: 2.w,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 16.w,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
