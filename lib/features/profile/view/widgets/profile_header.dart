
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';
import '../../view_model/cubit/theme_cubit.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage:
          AssetImage('assets/images/home/circle_profile.png'),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Text(
                  'Ziad Mohamed',
                  style: TextStyle(
                    fontSize: 19.68.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    color: state == ThemeState.dark
                        ? Colors.white
                        : ColorApp.profile_color,
                  ),
                );
              },
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Text(
                  'zio.hamdy222@gmail.com',
                  style: TextStyle(
                    fontSize: 11.12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: state == ThemeState.dark
                        ? Colors.white
                        : ColorApp.profile_color,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
