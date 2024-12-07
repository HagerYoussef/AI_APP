import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  const PageIndicator({
    required this.controller,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SmoothPageIndicator(
        controller: controller,
        count: count,
        effect: ExpandingDotsEffect(
          activeDotColor: Colors.white,
          dotColor: Colors.grey,
          dotHeight: 10.h,
          dotWidth: 8.w,
          radius: 20.r,
          expansionFactor: 4,
        ),
      ),
    );
  }
}
