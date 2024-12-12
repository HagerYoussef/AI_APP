import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MainImage extends StatelessWidget {
  final String imagePath;

  const MainImage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 323.w,
      height: 426.h,
      top: 170.h,
      left: 80.w,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
