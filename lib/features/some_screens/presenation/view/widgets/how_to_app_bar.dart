import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowToAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HowToAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.0.r),
        bottomRight: Radius.circular(15.0.r),
      ),
      child: Container(
        width: double.infinity,

        height: 128.h,
        color: const Color(0xff19488E),
        child: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: AppBar(
            leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            backgroundColor: Colors.transparent,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(88.h);
}
