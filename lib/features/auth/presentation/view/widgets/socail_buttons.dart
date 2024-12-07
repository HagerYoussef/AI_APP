import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد مكتبة ScreenUtil

import '../../../../../core/utils/image_paths.dart';
import 'social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SocialButton(
          text: "Continue with Google",
          imagePath: ImagePaths.google,
        ),
        SizedBox(height: 10.h),
        const SocialButton(
          text: "Continue with Apple",
          imagePath: ImagePaths.apple,
        ),
      ],
    );
  }
}
