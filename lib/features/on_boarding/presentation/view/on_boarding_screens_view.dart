import 'package:ai_app/features/on_boarding/presentation/view/widgets/back_ground_circles.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/custome_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/main_image.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/page_indicator.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/skip_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/text_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/next_button.dart';

class OnBoardingScreensView extends StatefulWidget {
  static const String routeName = 'On Boarding Screen';

  @override
  _OnBoardingScreensViewState createState() => _OnBoardingScreensViewState();
}

class _OnBoardingScreensViewState extends State<OnBoardingScreensView> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  final List<String> _images = [
    'assets/images/on_boarding/on_boarding_1.png',
    'assets/images/on_boarding/on_boarding_2.png',
    'assets/images/on_boarding/on_boarding_3.png',
    'assets/images/on_boarding/on_boarding_4.png',
    'assets/images/on_boarding/on_boarding_5.png',
  ];

  final List<String> _texts = [
    'Ask anything to Ai assistant.',
    'Generate images from Text.',
    'Create Presentations.',
    'Fast and easy payment solution.',
    'ArabAi is always with you!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-2, .2),
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF227C88),
              Color(0xFF19488E),
            ],
            stops: [0.03, 1.0],
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const BackgroundCircles(),
            MainImage(imagePath: _images[_currentPage]),
            Positioned.fill(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _images.length,
                itemBuilder: (context, index) => const SizedBox.shrink(),
              ),
            ),
            Positioned(
              bottom: 250.h,
              left: 20.w,
              child: TextContent(text: _texts[_currentPage]),
            ),
            if (_currentPage != _images.length - 1) ...[ // Show indicator only if not on the last page
              Positioned(
                bottom: 200.h,
                left: 0,
                child: PageIndicator(
                  controller: _pageController,
                  count: _images.length,
                ),
              ),
            ],
            if (_currentPage != _images.length - 1) ...[
              Positioned(
                bottom: 130.h,
                right: 20.w,
                child: NextButton(
                  currentPage: _currentPage,
                  pageCount: _images.length,
                  onTap: () {
                    if (_currentPage == _images.length - 1) {
                      Navigator.of(context).pushNamed('/home');
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ),
              Positioned(
                bottom: 140.h,
                left: 20.w,
                child: SkipButton(onTap: () {
                  Navigator.of(context).pushNamed('/home');
                }),
              ),
            ] else ...[
              Positioned(
                bottom: 150.h,
                left: 20.w,
                right: 20.w,
                child: CustomButton(onPressed: (){

                })
              ),
            ],
          ],
        ),
      ),
    );
  }
}


