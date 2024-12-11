import 'package:ai_app/core/themes/colors.dart';
import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/ai_chat/presentation/view/ai_chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        color:  ColorApp.color2,
        borderRadius:  BorderRadius.only(
          bottomRight: Radius.circular(15.r),
          bottomLeft: Radius.circular(15.r),
        ),
        boxShadow:  [
          BoxShadow(
            color:ColorApp.shadow,
            blurRadius: 8.8,
            offset: const Offset(0, 4),
          ),
        ],
        border:  Border(
          bottom: BorderSide(
            color:  ColorApp.color5,
            width: 0.5.w,
          ),
        ),
      ),
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
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
          Image.asset(
            ImagePaths.circleProfile,
            width: 53.w,
            height: 53.h,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(88);
}
