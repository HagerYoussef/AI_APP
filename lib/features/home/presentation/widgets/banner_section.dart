import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerSection extends StatelessWidget {
  const BannerSection();

  @override
  Widget build(BuildContext context) {
     Locale currentLocale = Localizations.localeOf(context);
   String imagePath = currentLocale.languageCode == 'ar'
        ? ImagePaths.home3
        : ImagePaths.home2;

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Container(
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
