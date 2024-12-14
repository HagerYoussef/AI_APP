import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class GenerateImage extends StatefulWidget {
  const GenerateImage({super.key});

  static const String routeName = 'Generate Image';

  @override
  State<GenerateImage> createState() => _GenerateImageState();
}

class _GenerateImageState extends State<GenerateImage> {

  String _imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HowToAppBar(title: AppLocalizations.of(context)!.translate('createimage')),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(
              hintText: AppLocalizations.of(context)!.translate('enter_text'),
              onSuffixIconPressed: () {
                setState(() {

                  _imageUrl = "https://plus.unsplash.com/premium_photo-1677094766815-e0fe790e364a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW55fGVufDB8fDB8fHww";
                });
              },
            ),
            SizedBox(height: 20.h),

            _imageUrl.isEmpty
                ? AnswerContainer(
              text: AppLocalizations.of(context)!.translate('image'),
            )
                : AnswerContainer(
              text: '',
              imageUrl: _imageUrl,
            ),
          ],
        ),
      ),
    );
  }
}
