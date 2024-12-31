import 'dart:io';

import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/profile/view/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/themes/colors.dart';

class ProfileHeader extends StatefulWidget {
  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  final ValueNotifier<Map<String, String>> userDataNotifier = ValueNotifier<Map<String, String>>({});

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, String>>(
      valueListenable: userDataNotifier,
      builder: (context, userData, child) {
        final name = userData['userName'] ?? 'No name';
        final email = userData['email'] ?? 'No email';
        final img = userData['profileImage'] ?? '';

        return Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: img.isNotEmpty
                  ? FileImage(File(img))
                  : const AssetImage(ImagePaths.ciimg) as ImageProvider,
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 19.68.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    color: ColorApp.profile_color,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 11.12.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: ColorApp.profile_color,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EditProfilePage.routeName).then((_) {

                    _getUserData();
                  });
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('userName') ?? '';
    String email = prefs.getString('email') ?? '';
    String img = prefs.getString('profileImage') ?? '';
    userDataNotifier.value = {'userName': name, 'email': email, 'profileImage': img};
  }
}
