import 'package:ai_app/features/auth/presentation/view/intro_screen_view.dart';
import 'package:ai_app/features/home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../on_boarding/presentation/view/on_boarding_screens_view.dart';

class SplashViewModel {
  Future<void> navigateToAppropriatePage(BuildContext context) async {

    await Future.delayed(const Duration(seconds: 3));


    final prefs = await SharedPreferences.getInstance();


    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;


    final bool isUserLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isUserLoggedIn) {

      Navigator.pushReplacementNamed(context, HomePage.routeName);
    } else if (isFirstTime) {

      Navigator.pushReplacementNamed(context, OnBoardingScreensView.routeName);
      prefs.setBool('isFirstTime', false);
    } else {

      Navigator.pushReplacementNamed(context, IntroScreen.routeName);
    }
  }
}
