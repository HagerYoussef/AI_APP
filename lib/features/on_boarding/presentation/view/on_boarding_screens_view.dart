import 'package:ai_app/features/on_boarding/presentation/view/widgets/back_ground_circles.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/custome_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/main_image.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/page_indicator.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/skip_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/text_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../language/presentation/view_model/cubit/language_cubit.dart';
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

  List<String> _texts = [];

  @override
  Widget build(BuildContext context) {
    _texts = [
      AppLocalizations.of(context)!.translate('ask'),
      AppLocalizations.of(context)!.translate('generate'),
      AppLocalizations.of(context)!.translate('create'),
      AppLocalizations.of(context)!.translate('fast'),
      AppLocalizations.of(context)!.translate('arabai'),
    ];

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
            if (_currentPage != _images.length - 1) ...[
              Positioned(
                bottom: 200.h,
                left: 0,
                child: PageIndicator(
                  controller: _pageController,
                  count: _images.length,
                ),
              ),
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
                  Navigator.of(context).pushNamed('Enter Code');
                }),
              ),
            ] else ...[
              Positioned(
                bottom: 150.h,
                left: 20.w,
                right: 20.w,
                child: CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Intro Screen');
                  },
                ),
              ),
            ],
            Positioned(
              top: 58.h,
              left: 29.w,
              child: GestureDetector(
                onTap: () {
                  // تغيير اللغة
                  final languageCubit = BlocProvider.of<LanguageCubit>(context);
                  final currentLocale = Localizations.localeOf(context).languageCode;
                  String newLanguage = currentLocale == 'en' ? 'ar' : 'en';
                  languageCubit.changeLanguage(newLanguage);
                },
                child: Container(
                  width: 126.w,
                  height: 52.h,
                  padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 11.h),
                  decoration: BoxDecoration(
                    color: const Color(0x2D7D8F).withOpacity(0.51), // Hex with opacity
                    borderRadius: const BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: Localizations.localeOf(context).languageCode == 'ar'
                        ? TextDirection.rtl
                        : TextDirection.ltr, // تعديل الاتجاه حسب اللغة
                    children: [
                      Icon(
                        Icons.language,
                        size: 24.sp,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        AppLocalizations.of(context)!.translate('lang'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
