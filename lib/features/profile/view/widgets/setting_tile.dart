import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/colors.dart';
import '../../view_model/cubit/theme_cubit.dart';

class SettingsTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingsTile({
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Padding(
        padding:  EdgeInsets.only(bottom: 30.h),
        child: ListTile(
          leading: Icon(
            icon,
            size: 20,
            color:
                state == ThemeState.dark ? Colors.white : ColorApp.profile_color,
          ),
          title: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return Text(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: state == ThemeState.dark
                      ? Colors.white
                      : ColorApp.profile_color,
                ),
              );
            },
          ),
          trailing: trailing,
          onTap: onTap,
        ),
      );
    });
  }
}
