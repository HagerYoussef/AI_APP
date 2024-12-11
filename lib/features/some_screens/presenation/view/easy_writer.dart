import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class EasyWriter extends StatelessWidget {
  const EasyWriter({super.key});

  static const String routeName = 'Easy Writer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  HowToAppBar(title: AppLocalizations.of(context)!.translate('writer')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: AppLocalizations.of(context)!.translate('enter_text')),
            SizedBox(height: 20.h),
            AnswerContainer(text: AppLocalizations.of(context)!.translate('Text')),
          ],
        ),
      ),
    );
  }
}
