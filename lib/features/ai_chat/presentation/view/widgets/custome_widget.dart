import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد المكتبة

class CustomMessageWidget extends StatelessWidget {
  final double top;
  final double? left;
  final double? right;
  final List<Color> gradientColors;
  final BorderRadius borderRadius;
  final String imagePath;

  const CustomMessageWidget({
    required this.top,
    this.left,
    this.right,
    required this.gradientColors,
    required this.borderRadius,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.h, // استخدام ScreenUtil لتحويل القيم
      left: left?.w, // استخدام w لتحديد العرض بناءً على الشاشة
      right: right?.w, // استخدام w لتحديد العرض بناءً على الشاشة
      child: SizedBox(
        width: 259.w, // استخدام w لتحديد العرض بناءً على الشاشة
        height: 51.h, // استخدام h لتحديد الارتفاع بناءً على الشاشة
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: gradientColors,
              stops: const [0.115, 1.0],
            ),
            borderRadius: borderRadius,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 0.5.w, // استخدام w لضبط سمك الحدود بناءً على الشاشة
            ),
          ),
        ),
      ),
    );
  }
}

class CustomImageWidget extends StatelessWidget {
  final double top;
  final double? left;
  final double? right;
  final String imagePath;
  final BorderRadius borderRadius;

  const CustomImageWidget({
    required this.top,
    this.left,
    this.right,
    required this.imagePath,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.h,
      left: left?.w,
      right: right?.w,
      child: SizedBox(
        width: 47.w,
        height: 47.h,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
