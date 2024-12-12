import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';
import '../../../../profile/view_model/cubit/theme_cubit.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26.w,
          vertical: 23.h,
        ),
        child: Container(
          width: 367.w,
          height: 63.h,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Image.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? Localizations.localeOf(context).languageCode == 'ar'
                        ? ImagePaths.share2
                        : ImagePaths.shareEn
                    : Localizations.localeOf(context).languageCode == 'ar'
                        ? ImagePaths.share
                        : ImagePaths.shareEn2,
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
    });
  }
}
