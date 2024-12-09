import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  static const String routeName = 'drawer';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff19488E),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Image.asset("assets/images/home/drawer/close.png", width: 36.w, height: 36.h),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/home/drawer/diamond.png", width: 24.w, height: 24.h),
              title: Text(
                'Pro',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {

              },
            ),
            ListTile(
              title: Text(
                'Get Gold Credits',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {

              },
            ),
            ListTile(
              title: Text(
                'Premium',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.black, size: 24.w),
              title: Text(
                'Social',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {

              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset("assets/images/home/drawer/facebook.png", width: 48.w, height: 48.h),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/home/drawer/twitter.png", width: 48.w, height: 48.h),
                    onPressed: () {

                    },
                  ),
                  IconButton(
                    icon: Image.asset("assets/images/home/drawer/instagram.png", width: 48.w, height: 48.h),
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
