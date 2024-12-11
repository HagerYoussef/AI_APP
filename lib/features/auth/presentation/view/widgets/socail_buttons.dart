import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد مكتبة ScreenUtil

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/utils/image_paths.dart';
import 'social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButton(
          text: AppLocalizations.of(context)!.translate('con') ,
          imagePath: ImagePaths.google,
        ),
        SizedBox(height: 20.h),
        SocialButton(
          text: AppLocalizations.of(context)!.translate('con2') ,
          imagePath: ImagePaths.apple,
        ),
      ],
    );
  }
}
