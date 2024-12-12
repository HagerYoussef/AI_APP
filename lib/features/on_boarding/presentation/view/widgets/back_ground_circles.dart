import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'circle_image.dart';

class BackgroundCircles extends StatelessWidget {
  const BackgroundCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          width: 407.92.w,
          height: 901.66.h,
          top: 4.25.h,
          left: 13.36.w,
          child:  CircleImage(ImagePaths.image13),
        ),
        Positioned(
          width: 325.62.w,
          height: 719.75.h,
          top: 95.21.h,
          left: 54.51.w,
          child: const CircleImage(ImagePaths.image14),
        ),
        Positioned(
          width: 241.89.w,
          height: 534.67.h,
          top: 187.75.h,
          left: 96.37.w,
          child: const CircleImage(ImagePaths.image15),
        ),
        Positioned(
          width: 144.56.w,
          height: 319.54.h,
          top: 295.31.h,
          left: 145.04.w,
          child: const CircleImage(ImagePaths.image16),
        ),
        Positioned(
          width: 68.7.w,
          height: 151.86.h,
          top: 379.15.h,
          left: 182.97.w,
          child:  CircleImage(ImagePaths.image17),
        ),
      ],
    );
  }
}
