import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class HowTo extends StatelessWidget {
  const HowTo({super.key});

  static const String routeName = 'How To';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:HowToAppBar(title: 'How To',),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(hintText: 'Enter Your Question'),
              SizedBox(height: 20.h),
              const AnswerContainer(text: 'Answer'),
            ],
          ),
        ),
      ),
    );
  }
}
