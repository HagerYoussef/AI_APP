import 'package:ai_app/features/profile/view/widgets/profile_app_bar.dart';
import 'package:ai_app/features/profile/view/widgets/profile_header.dart';
import 'package:ai_app/features/profile/view/widgets/setting_list.dart';
import 'package:ai_app/features/profile/view_model/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'Profile Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            const SizedBox(height: 40),
            SettingsList(),
          ],
        ),
      ),
    );
  }
}




