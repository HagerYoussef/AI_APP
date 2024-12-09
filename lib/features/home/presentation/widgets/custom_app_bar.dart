import 'package:ai_app/features/ai_chat/presentation/view/ai_chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height, // Use the preferredSize height
      decoration: BoxDecoration(
        color: const Color(0xff19488E), // Background color
        borderRadius:  BorderRadius.only(
          bottomRight: Radius.circular(15.r), // Bottom-right radius
          bottomLeft: Radius.circular(15.r), // Bottom-left radius
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xD184BCF0), // Shadow color
            blurRadius: 8.8, // Blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
        border:  Border(
          bottom: BorderSide(
            color: Color(0xD6184893), // Bottom border color
            width: 0.5.w, // Border width
          ),
        ),
      ),
      padding:  EdgeInsets.symmetric(horizontal: 18.w), // Inner padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "drawer");
            },
            child: Image.asset(
              'assets/images/home/menu.png',
              width: 24.w, // Icon width
              height: 24.h, // Icon height
            ),
          ),
          Image.asset(
            'assets/images/home/circle_profile.png',
            width: 53.w, // Profile image width
            height: 53.h, // Profile image height
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(88); // Set app bar height
}
