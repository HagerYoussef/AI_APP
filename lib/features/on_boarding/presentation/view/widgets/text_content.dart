import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';

class TextContent extends StatelessWidget {
  final String text;

  const TextContent({required this.text, super.key});

  @override
  Widget build(BuildContext context) {

    final locale = Localizations.localeOf(context);

    final textDirection = locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;

    return Directionality(
      textDirection: textDirection,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: ColorApp.white_color,
          ),
        ),
      ),
    );
  }
}
