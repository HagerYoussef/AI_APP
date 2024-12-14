import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class TextSummarizer extends StatefulWidget {
  const TextSummarizer({super.key});

  static const String routeName = 'Text Summarizer';

  @override
  State<TextSummarizer> createState() => _TextSummarizerState();
}

class _TextSummarizerState extends State<TextSummarizer> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  HowToAppBar(title:AppLocalizations.of(context)!.translate('textSummrizer')),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          children: [
            CustomTextField(hintText: AppLocalizations.of(context)!.translate('enter_text'),onSuffixIconPressed: () {
              setState(() {

                _enteredText = "dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text";
              });
            },),
            SizedBox(height: 20.h),
            AnswerContainer(
              text: _enteredText.isEmpty
                  ? AppLocalizations.of(context)!.translate('textSummrizer')
                  : _enteredText,
            ),
          ],
        ),
      ),
    );
  }
}
