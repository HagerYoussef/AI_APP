import 'package:ai_app/features/on_boarding/presentation/view/widgets/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreensView extends StatefulWidget {
  static const String routeName = 'On Boarding Screen';

  @override
  _OnBoardingScreensViewState createState() => _OnBoardingScreensViewState();
}

class _OnBoardingScreensViewState extends State<OnBoardingScreensView> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingScreenBody(
        currentPage: _currentPage,
        pageController: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
