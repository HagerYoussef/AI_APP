import 'package:ai_app/features/profile/view_model/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = 'Profile Screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        color: ColorApp.main_color,
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage('assets/images/home/circle_profile.png'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ziad Mohamed',
                      style: TextStyle(
                          fontSize: 19.68.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Cairo',
                          color: ColorApp.profile_color),
                    ),
                    Text('zio.hamdy222@gmail.com',
                        style: TextStyle( fontSize: 11.12.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: ColorApp.profile_color)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Settings List
            ListTile(
              leading: const Icon(Icons.nightlight_round,size: 20,),
              title:  Text('Dark mode',style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
                color: ColorApp.profile_color
              ),),
              trailing: Switch(
                value: context.read<ThemeCubit>().state == ThemeState.dark,
                onChanged: (bool value) {
                  context.read<ThemeCubit>().toggleTheme();
                },
              ),
            ),
            // Example of other settings options
            ListTile(
              leading: const Icon(Icons.notifications_none_outlined),
              title:  Text('Notifications',style: TextStyle(
              fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              trailing: Switch(
                value: true, // Here you can manage the state for notifications
                onChanged: (bool value) {
                  // Handle notification toggle
                },
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,),

              leading: const Icon(Icons.language,size: 20,),
              title:  Text('Language',style: TextStyle(
              fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              onTap: () {
                Navigator.pushNamed(context, "Home Page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.language,size: 20,),
              title:  Text('Language',style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              onTap: () {
                Navigator.pushNamed(context, "Home Page");
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,),

              leading: const Icon(Icons.history_rounded,size: 20,),
              title:  Text('History',style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              onTap: () {
                Navigator.pushNamed(context, "Home Page");
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios_sharp,size: 20,),
              leading: const Icon(Icons.help_outline_rounded,size: 20,),
              title:  Text('Help',style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              onTap: () {
                Navigator.pushNamed(context, "Home Page");
              },
            ),
            ListTile(
trailing: Icon(Icons.logout_outlined,size: 20,),
              title:  Text('Log out',style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: ColorApp.profile_color
              ),),
              onTap: () {
                Navigator.pushNamed(context, "Home Page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
