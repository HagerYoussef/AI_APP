import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding:  EdgeInsets.symmetric(vertical: 30.0.h,horizontal: 7.w),
      child: Container(
        width: 400.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: Color(0xffd1dbf0),
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(
            color: Color(0xffd1dbf0),
            width: 0.5,
          ),
        ),
        child:Row(
          children: [
            // TextField
            SizedBox(
              width: 320.w,
              height: 40.h,
              child: Padding(
                padding: EdgeInsets.only(left: 7.w, top: 3.h, bottom: 3.h),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Color(0xFFA8B9D5), fontSize: 14.sp),
                    contentPadding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
                    filled: true,
                    fillColor: Color(0xffA8B9D5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(color: Color(0xffA8B9D5), width: 1.w),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(color: Color(0xffA8B9D5), width: 1.w),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(width: 10.w),

            if (_isTyping)
              Image.asset(
                "assets/images/share.png",
                width: 24.w,
                height: 24.h,
              )
            else
              Row(
                children: [
                  Image.asset(
                    "assets/images/chat/image.png",
                    width: 24.w,
                    height: 18.h,
                  ),
                  SizedBox(width: 10.w),
                  Image.asset(
                    "assets/images/chat/mic.png",
                    width: 12.w,
                    height: 22.h,
                  ),
                ],
              ),
          ],
        ),

      ),
    );
  }
}
