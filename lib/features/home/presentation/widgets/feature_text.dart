import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../profile/view_model/cubit/theme_cubit.dart';

class FeatureText extends StatelessWidget {
  const FeatureText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Text(
          AppLocalizations.of(context)!.translate('featureText'),
          style: TextStyle(
            fontSize: 20.sp,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w900,
            color:
                state == ThemeState.dark ? ColorApp.white_color: ColorApp.home_color,
          ),
        ),
      );
    });
  }
}
