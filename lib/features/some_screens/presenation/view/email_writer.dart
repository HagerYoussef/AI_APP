import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class EmailWriter extends StatelessWidget {
  const EmailWriter({super.key});

  static const String routeName = 'Email Writer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  HowToAppBar(title: AppLocalizations.of(context)!.translate('emailwriter')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: AppLocalizations.of(context)!.translate('data')),
            SizedBox(height: 20.h),
            AnswerContainer(text: AppLocalizations.of(context)!.translate('Text')),
          ],
        ),
      ),
    );
  }
}
