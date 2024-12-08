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
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 20.r,
                backgroundImage: const AssetImage('assets/images/chat/ai.png'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Zaid",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              trailing: CircleAvatar(
                radius: 24.r,
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage('assets/images/chat/record.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(128.h);
}
