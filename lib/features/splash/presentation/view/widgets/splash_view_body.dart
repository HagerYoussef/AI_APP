import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/image_paths.dart';
import '../../view_model/splash_view_model.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SplashViewModel().navigateToHome(context);

    return Scaffold(
      backgroundColor: AppColors.primaryColor1,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              ImagePaths.splashImage2,
              fit: BoxFit.contain,
              width: 430.w,
              height: 656.h,
            ),
          ),
          Center(
            child: Image.asset(
              ImagePaths.splashImage1,
              width: 210.w,
              height: 114.h,
            ),
          )
        ],
      ),
    );
  }
}
