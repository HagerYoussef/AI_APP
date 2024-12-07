import 'package:ai_app/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../on_boarding/presentation/view/on_boarding_screens_view.dart';

class SplashViewModel {
  void navigateToHome(BuildContext context) {
      Future.delayed(const Duration(seconds: 3), () {
         Navigator.pushReplacementNamed(context, OnBoardingScreensView.routeName);
    });
  }
}
