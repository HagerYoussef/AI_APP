import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class LanguageToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126.w,
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: const Color(0x2D7D8F).withOpacity(0.51),
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: Localizations.localeOf(context).languageCode == 'ar'
            ? TextDirection.rtl
            : TextDirection.ltr,
        children: [
          if (Localizations.localeOf(context).languageCode == 'ar') ...[
            Text(
              AppLocalizations.of(context)!.translate('lang'),
              style: TextStyle(
                color: ColorApp.white_color,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 10.w),
            Icon(
              Icons.language,
              size: 24.sp,
              color: ColorApp.white_color,
            ),
          ] else ...[
            Icon(
              Icons.language,
              size: 24.sp,
              color:  ColorApp.white_color,
            ),
            SizedBox(width: 10.w),
            Text(
              AppLocalizations.of(context)!.translate('lang'),
              style: TextStyle(
                color: ColorApp.white_color,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
