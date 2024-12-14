import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class EasyWriter extends StatefulWidget {
  const EasyWriter({super.key});

  static const String routeName = 'Easy Writer';

  @override
  _EasyWriterState createState() => _EasyWriterState();
}

class _EasyWriterState extends State<EasyWriter> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HowToAppBar(title: AppLocalizations.of(context)!.translate('writer')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(
              hintText: AppLocalizations.of(context)!.translate('enter_text'),

              onSuffixIconPressed: () {
                setState(() {

                  _enteredText = "dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text";
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
