import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title; // العنوان (اختياري)
  final bool showLeading; // هل يظهر زر الرجوع؟
  final IconData? leadingIcon; // أيقونة الرجوع (اختيارية)
  final VoidCallback? onLeadingPressed; // وظيفة عند الضغط على زر الرجوع
  final Widget? actionWidget; // الأكشن كوديجيت (اختياري)

  const CustomeAppBar({
    Key? key,
    this.title,
    this.showLeading = true,
    this.leadingIcon,
    this.onLeadingPressed,
    this.actionWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.0.r),
        bottomRight: Radius.circular(15.0.r),
      ),
      child: Container(
        width: 430.w,  // العرض الثابت 430px
        height: 88.h,  // الارتفاع الثابت 88px
        decoration: BoxDecoration(
          color: const Color(0xff19488E),
          border: Border(
            bottom: BorderSide(
              color: const Color(0xFF184893D6), // اللون المستخدم في الحافة السفلى
              width: 0.5, // سمك الحدود
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF194A76D1), // الشادو باللون المحدد
              offset: Offset(0, 4),  // حركة الشادو عمودياً من الأسفل
              blurRadius: 8.8.r, // تأثير الضبابية لجعل الشادو ناعماً
              spreadRadius: 0, // الانتشار الأفقي
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 11.w, right: 11.w), // الـ Padding حسب المتطلبات
          child: AppBar(
            leading: showLeading
                ? IconButton(
              icon: Icon(
                leadingIcon ?? Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: onLeadingPressed ?? () => Navigator.pop(context),
            )
                : null,
            title: title != null
                ? Text(
              title!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
                : null,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: actionWidget != null
                ? [
              actionWidget!,
            ]
                : null,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(128.h);  // تحديد الحجم المفضل للـ AppBar
}
