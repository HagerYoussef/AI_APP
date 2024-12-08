import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custome_widget.dart';
import 'message_input_field.dart';

class AiChatBody extends StatelessWidget {
  const AiChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              CustomMessageWidget(
                top: 47.h,
                left: 47.w,
                gradientColors: const [
                  Color(0xFF164992),
                  Color(0xFF5AA6F4),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                  bottomLeft: Radius.circular(15.r),
                ),
                imagePath: '',
              ),
              CustomImageWidget(
                top: 1.h,
                left: 1.w,
                imagePath: 'assets/images/chat/new.jpeg',
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  bottomLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                  bottomRight: Radius.zero,
                ),
              ),
              CustomMessageWidget(
                top: 150.h,
                right: 47.w,
                gradientColors: const [
                  Color(0xFF164992),
                  Color(0xFF5AA6F4),
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.zero,
                  topLeft: Radius.circular(15.r),
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                imagePath: '',
              ),
              CustomImageWidget(
                top: 104.h,
                right: 1.w,
                imagePath: 'assets/images/chat/new2.jpeg',
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  bottomLeft: Radius.zero,
                  topRight: Radius.circular(25.r),
                  bottomRight: Radius.circular(25.r),
                ),
              ),
            ],
          ),
        ),
        MessageInputField()
      ],
    );
  }
}
