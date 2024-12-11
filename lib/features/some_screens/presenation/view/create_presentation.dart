import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class CreatePresentation extends StatelessWidget {
  const CreatePresentation({super.key});

  static const String routeName = 'Create Presentation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  HowToAppBar(title: AppLocalizations.of(context)!.translate('create2')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: AppLocalizations.of(context)!.translate('data')),
            SizedBox(height: 20.h),
            AnswerContainer(text:AppLocalizations.of(context)!.translate('file')),
          ],
        ),
      ),
    );
  }
}
