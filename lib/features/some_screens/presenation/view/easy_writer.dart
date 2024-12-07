import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class EasyWriter extends StatelessWidget {
  const EasyWriter({super.key});

  static const String routeName = 'How To';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HowToAppBar(title: 'Easy Writer'),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: 'Enter Your Text'),
            SizedBox(height: 20.h),
            AnswerContainer(text: 'Text'),
          ],
        ),
      ),
    );
  }
}
