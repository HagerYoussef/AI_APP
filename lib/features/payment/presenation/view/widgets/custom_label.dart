import 'package:ai_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../profile/view_model/cubit/theme_cubit.dart';

class CustomLabel extends StatelessWidget {
  final String title;

  const CustomLabel({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Text(
        title,
        style: TextStyle(
          color: state == ThemeState.dark
              ? ColorApp.white_color
              : ColorApp.home_color,
          fontFamily: 'Cairo',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
      );
    });
  }
}
