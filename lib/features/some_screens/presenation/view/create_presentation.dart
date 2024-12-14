import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/app_localization.dart';
import 'widgets/answer_container.dart';
import 'widgets/custome_text_field.dart';
import 'widgets/how_to_app_bar.dart';

class CreatePresentation extends StatefulWidget {
  const CreatePresentation({super.key});

  static const String routeName = 'Create Presentation';

  @override
  _CreatePresentationState createState() => _CreatePresentationState();
}

class _CreatePresentationState extends State<CreatePresentation> {
  bool _isPresentationOpen = false;
  String _enteredText = '';

  List<Map<String, String>> _slides = [
    {'title': 'Welcome to the Presentation', 'content': 'This is the first slide content.'},
    {'title': 'Slide 2', 'content': 'Here is the content of the second slide.'},
    {'title': 'Slide 3', 'content': 'This is the third slide with more details.'},
  ];

  int _currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HowToAppBar(
        title: AppLocalizations.of(context)?.translate('create2') ?? 'Create Presentation',
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
          children: [
            CustomTextField(
              hintText: AppLocalizations.of(context)?.translate('data') ?? 'Enter data',
              onSuffixIconPressed: () {
                setState(() {
                  _isPresentationOpen = !_isPresentationOpen;
                });
              },
            ),
            SizedBox(height: 20.h),
             Flexible(
              child: _isPresentationOpen
                  ? PageView.builder(
                itemCount: _slides.length,
                controller: PageController(),
                onPageChanged: (index) {
                  setState(() {
                    _currentSlideIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(16.0),
                    child: AnswerContainer(
                      text: '${_slides[index]['title']} \n\n${_slides[index]['content']}',
                    ),
                  );
                },
              ):

                AnswerContainer(
                  text: _enteredText.isEmpty
                      ? AppLocalizations.of(context)!.translate('file')
                      : _enteredText,
                ),
              ),

            if (_isPresentationOpen)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        setState(() {
                          if (_currentSlideIndex > 0) {
                            _currentSlideIndex--;
                          }
                        });
                      },
                    ),
                    Text(
                      '${_currentSlideIndex + 1} / ${_slides.length}',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        setState(() {
                          if (_currentSlideIndex < _slides.length - 1) {
                            _currentSlideIndex++;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
