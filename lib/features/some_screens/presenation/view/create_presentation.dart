import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class CreatePresentation extends StatelessWidget {
  const CreatePresentation({super.key});

  static const String routeName = 'Create Presentation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HowToAppBar(title: 'Create Presentation'),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: 'Enter Your Data'),
            SizedBox(height: 20.h),
            AnswerContainer(text: 'File'),
          ],
        ),
      ),
    );
  }
}
