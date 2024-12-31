import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(88);
}

class _CustomAppBarState extends State<CustomAppBar> {
  late ValueNotifier<String> _profileImageNotifier;

  @override
  void initState() {
    super.initState();
    _profileImageNotifier = ValueNotifier<String>('');
    _loadProfileImage();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: _profileImageNotifier,
      builder: (context, img, child) {
        return Container(
          height: widget.preferredSize.height,
          decoration: BoxDecoration(
            color: ColorApp.color2,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.r),
              bottomLeft: Radius.circular(15.r),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorApp.shadow,
                blurRadius: 8.8,
                offset: const Offset(0, 4),
              ),
            ],
            border: Border(
              bottom: BorderSide(
                color: ColorApp.color5,
                width: 0.5.w,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "drawer");
                },
                child: Image.asset(
                  ImagePaths.menu,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "Profile Screen");
                },
                child: CircleAvatar(
                  radius: 26.r,
                  backgroundImage: img.isNotEmpty
                      ? FileImage(File(img))
                      : const AssetImage(ImagePaths.ciimg) as ImageProvider,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String img = prefs.getString('profileImage') ?? '';
    _profileImageNotifier.value = img;
  }


  static Future<void> updateProfileImage(String imagePath) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('profileImage', imagePath);
  }
}
