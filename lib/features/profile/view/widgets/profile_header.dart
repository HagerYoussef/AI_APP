
import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../view_model/cubit/theme_cubit.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundImage:
          const AssetImage(ImagePaths.ciimg),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Text(
                  AppLocalizations.of(context)!.translate('ziad2'),
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
                  AppLocalizations.of(context)!.translate('email'),
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
        const Spacer(),
         Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "Edit Profile");
              },
              child: const Icon(Icons.arrow_forward_ios)),
        )
      ],
    );
  }
}
