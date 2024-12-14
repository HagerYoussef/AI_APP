import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class EmailWriter extends StatefulWidget {
  const EmailWriter({super.key});

  static const String routeName = 'Email Writer';

  @override
  State<EmailWriter> createState() => _EmailWriterState();
}

class _EmailWriterState extends State<EmailWriter> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HowToAppBar(
          title: AppLocalizations.of(context)!.translate('emailwriter')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(
              hintText: AppLocalizations.of(context)!.translate('data'),
              onSuffixIconPressed: () {
                setState(() {

                  _enteredText =
                      "Subject: Support Request\nDear [Recipient's Name],\nI hope this message finds you well.\nI am writing to inquire about the issue I encountered while using your service. The issue is related to [briefly describe the problem]. I would greatly appreciate it if you could provide me with further assistance regarding this matter.\nPlease let me know if you need any additional information to help resolve the issue. I am looking forward to your prompt response.\nBest regards,\n[Your Name\n[Your Contact Information]";
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
