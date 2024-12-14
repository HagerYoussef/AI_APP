import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';  // للاستفادة من الترجمة و RTL

class CustomMessageWidgetArabic extends StatelessWidget {
  final List<Color> gradientColors;
  final BorderRadius borderRadius;
  final String imagePath;
  final String txt;
  final bool isAI;

  const CustomMessageWidgetArabic({
    required this.gradientColors,
    required this.borderRadius,
    required this.imagePath,
    required this.txt,
    this.isAI = false,
  });

  @override
  Widget build(BuildContext context) {
    bool isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          mainAxisAlignment:
          isAI ? (isArabic ? MainAxisAlignment.end : MainAxisAlignment.start) : (isArabic ? MainAxisAlignment.start : MainAxisAlignment.end),
          children: [
            if (isAI) ...[
              Column(
                crossAxisAlignment: isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(0.r),
                    ),
                    child: Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Transform.translate(
                    offset: isArabic ? Offset(-40.w, 0) : Offset(40.w, 0),
                    child: Container(
                      width: 200.w,

                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: gradientColors,
                          stops: const [0.115, 1.0],
                        ),
                        borderRadius: borderRadius,
                      ),
                      child: Text(
                        txt,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            if (!isAI) ...[
              Column(
                crossAxisAlignment: isArabic ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(0.r),
                    ),
                    child: Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Transform.translate(
                    offset: isArabic ? Offset(40.w, 0) : Offset(-40.w, 0),
                    child: Container(
                      width: 200.w,
                      height: 60.h,
                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: gradientColors,
                          stops: const [0.115, 1.0],
                        ),
                        borderRadius: borderRadius,
                      ),
                      child: Text(
                        txt,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
