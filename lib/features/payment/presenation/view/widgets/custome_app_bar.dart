import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomeAppBar({Key? key}) : super(key: key);

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
          padding:  EdgeInsets.only(top: 20.h),
          child: AppBar(
            leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,

            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text('+ Add New Card',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,

                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(128.h);
}
