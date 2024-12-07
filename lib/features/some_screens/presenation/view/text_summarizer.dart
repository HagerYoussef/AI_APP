import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class TextSummarizer extends StatelessWidget {
  const TextSummarizer({super.key});

  static const String routeName = 'Text Summarizer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HowToAppBar(title: 'Text Summarizer'),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: 'Enter Your text'),
            SizedBox(height: 20.h),
            AnswerContainer(text: 'Text Summarizer'),
          ],
        ),
      ),
    );
  }
}
