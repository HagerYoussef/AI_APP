import 'package:ai_app/features/on_boarding/presentation/view/widgets/custome_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/page_indicator.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/skip_button.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/text_content.dart';
import 'package:ai_app/features/on_boarding/presentation/view/widgets/toogle_lang_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/image_paths.dart';
import '../../../../language/presentation/view_model/cubit/language_cubit.dart';
import 'back_ground_circles.dart';
import 'main_image.dart';
import 'next_button.dart';

class OnBoardingScreenBody extends StatelessWidget {
  final int currentPage;
  final PageController pageController;
  final Function(int) onPageChanged;

  OnBoardingScreenBody({
    required this.currentPage,
    required this.pageController,
    required this.onPageChanged,
  });

  final List<String> _images = [
    ImagePaths.on_1,
    ImagePaths.on_2,
    ImagePaths.on_3,
    ImagePaths.on_4,
    ImagePaths.on_5,
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

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-2, .2),
          end: Alignment.bottomCenter,
          colors: [
            ColorApp.color37,
            ColorApp.color38,
          ],
          stops: const [0.03, 1.0],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const BackgroundCircles(),
          MainImage(imagePath: _images[currentPage]),
          Positioned.fill(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: onPageChanged,
              itemCount: _images.length,
              itemBuilder: (context, index) => const SizedBox.shrink(),
            ),
          ),
          Positioned(
            bottom: 280.h,
            left: 20.w,
            child: TextContent(text: _texts[currentPage]),
          ),
          if (currentPage != _images.length - 1) ...[
            Positioned(
              bottom: 220.h,
              left: 0,
              child: PageIndicator(
                controller: pageController,
                count: _images.length,
              ),
            ),
            Positioned(
              bottom: 150.h,
              right: 5.w,
              child: NextButton(
                currentPage: currentPage,
                pageCount: _images.length,
                onTap: () {
                  if (currentPage == _images.length - 1) {
                    Navigator.of(context).pushNamed('Home Screen');
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ),
            Positioned(
              bottom: 160.h,
              left: 20.w,
              child: SkipButton(onTap: () {
                Navigator.of(context).pushNamed('Intro Screen');
              }),
            ),
          ] else ...[
            Positioned(
              bottom: 170.h,
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
            left: Localizations.localeOf(context).languageCode == 'ar' ? null : 29.w,
            right: Localizations.localeOf(context).languageCode == 'ar' ? 29.w : null,
            child: GestureDetector(
              onTap: () {
                final languageCubit = BlocProvider.of<LanguageCubit>(context);
                final currentLocale = Localizations.localeOf(context).languageCode;
                String newLanguage = currentLocale == 'en' ? 'ar' : 'en';
                languageCubit.changeLanguage(newLanguage);
              },
              child: LanguageToggleButton(),
            ),
          )
        ],
      ),
    );
  }
}
