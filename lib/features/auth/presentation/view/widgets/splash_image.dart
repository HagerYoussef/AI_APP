import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagePaths.splashImage1,
      width: 249.w,
      height: 114.h,
    );
  }
}
