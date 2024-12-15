import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/image_paths.dart';

class ProfileImageWidget extends StatelessWidget {
  final File? profileImage;
  final VoidCallback onTap;

  ProfileImageWidget({required this.profileImage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 92.r,
          backgroundImage: profileImage != null
              ? FileImage(profileImage!)
              : const AssetImage(ImagePaths.circleProfile) as ImageProvider,
        ),
        Positioned(
          bottom: 7,
          left: 5,
          child: CircleAvatar(
            child: Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Image.asset(
                    ImagePaths.icon1,
                    width: 55.sp,
                    height: 55.sp,
                  ),
                ),
                InkWell(
                  onTap: onTap,
                  child: Image.asset(
                   ImagePaths.icon2,
                    width: 28.7.sp,
                    height: 28.7.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

