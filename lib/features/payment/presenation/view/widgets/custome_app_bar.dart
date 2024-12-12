import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/themes/colors.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showLeading;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;
  final Widget? actionWidget;

  const CustomeAppBar({
    Key? key,
    this.title,
    this.showLeading = true,
    this.leadingIcon,
    this.onLeadingPressed,
    this.actionWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.0.r),
        bottomRight: Radius.circular(15.0.r),
      ),
      child: Container(
        width: 430.w,
        height: 88.h,
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
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 11.w, right: 11.w),
          child: AppBar(
            leading: showLeading
                ? IconButton(
              icon: Icon(
                leadingIcon ?? Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              onPressed: onLeadingPressed ?? () => Navigator.pop(context),
            )
                : null,
            title: title != null
                ? Text(
              title!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
                : null,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: actionWidget != null
                ? [
              actionWidget!,
            ]
                : null,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(128.h);
}
