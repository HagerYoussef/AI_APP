import 'package:ai_app/features/auth/presentation/view/widgets/splash_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../intro_screen_view.dart';
import 'custom_button.dart';
import 'login_button.dart';

class ContentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SplashImage(),
          SizedBox(height: 20.h),
          LoginButton(),
          SizedBox(height: 20.h),
          RegisterButton(),
        ],
      ),
    );
  }
}
