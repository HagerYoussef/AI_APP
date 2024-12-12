import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ai_app/core/localization/app_localization.dart';

import '../../../../../core/themes/colors.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onTap;

  const SkipButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final bool isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: isArabic ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Text(
            AppLocalizations.of(context)!.translate('skip'),
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18.sp,
              color: ColorApp.white_color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
