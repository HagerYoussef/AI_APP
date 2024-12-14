import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class HowTo extends StatefulWidget {
  const HowTo({super.key});

  static const String routeName = 'How To';

  @override
  State<HowTo> createState() => _HowToState();
}

class _HowToState extends State<HowTo> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          HowToAppBar(title: AppLocalizations.of(context)!.translate('howto')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(
              hintText:
                  AppLocalizations.of(context)!.translate('enteryourquestion'),
              onSuffixIconPressed: () {
                setState(() {
                  _enteredText =
                      "dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text";
                });
              },
            ),
            SizedBox(height: 20.h),
            AnswerContainer(
              text: _enteredText.isEmpty
                  ? AppLocalizations.of(context)!.translate('Text')
                  : _enteredText,
            ),
          ],
        ),
      ),
    );
  }
}
