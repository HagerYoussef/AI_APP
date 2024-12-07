import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagePaths.intro,
      width: 1.sw,
      height: 1.sh,
      fit: BoxFit.cover,
    );
  }
}
