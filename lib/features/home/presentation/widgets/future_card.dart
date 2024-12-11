import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';
import '../../../profile/view_model/cubit/theme_cubit.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;

  const FeatureCard({
    required this.title,
    required this.description,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Container(
          width: 167.w,
          height: 120.h,
          padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              color: state == ThemeState.dark
                  ? ColorApp.white_color
                  : ColorApp.home_color,
              width: 0.3.w,
            ),
            color: state == ThemeState.dark
                ? ColorApp.dark_color
                : ColorApp.white_color,
            boxShadow: [
              BoxShadow(
                color: ColorApp.color8,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset(
                  iconPath,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  fontStyle: FontStyle.italic,
                  color: state == ThemeState.dark
                      ? ColorApp.white_color
                      : ColorApp.home_color,
                ),
              ),
              SizedBox(height: 4.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: state == ThemeState.dark
                          ? ColorApp.white_color
                          : ColorApp.text_color.withOpacity(.88),
                    ),
                    maxLines: 3,
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
