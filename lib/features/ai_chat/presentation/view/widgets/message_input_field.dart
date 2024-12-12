import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';

class MessageInputField extends StatefulWidget {
  @override
  _MessageInputFieldState createState() => _MessageInputFieldState();
}

class _MessageInputFieldState extends State<MessageInputField> {
  TextEditingController _controller = TextEditingController();
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _isTyping = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 7.w),
      child: Container(
        width: 400.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: ColorApp.color15,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(
            color: ColorApp.color15,
            width: 0.5.w,
          ),
        ),
        child: Row(
          children: [
            // TextField section
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                height: 40.h,
                decoration: BoxDecoration(
                  color: ColorApp.color9,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  decoration: InputDecoration(
                     hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    border: InputBorder.none, // Remove all borders
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 8.h,
                    ),
                  ),
                ),
              ),
            ),

            // Icons (depending on typing state)
            if (_isTyping)
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Image.asset(
                  ImagePaths.shareEn2,
                  width: 24.w,
                  height: 24.h,
                ),
              )
            else
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      ImagePaths.img,
                      width: 24.w,
                      height: 18.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      ImagePaths.mic,
                      width: 12.w,
                      height: 22.h,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
