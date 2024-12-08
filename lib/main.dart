import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/localization/app_localization.dart';
import 'features/ai_chat/presentation/view/ai_chat_view.dart';
import 'features/auth/presentation/view/enter_code.dart';
import 'features/auth/presentation/view/forget_password.dart';
import 'features/auth/presentation/view/intro_screen_view.dart';
import 'features/auth/presentation/view/login_view.dart';
import 'features/auth/presentation/view/register_view.dart';
import 'features/home/presentation/home_view.dart';
import 'features/language/presentation/view_model/cubit/language_cubit.dart';
import 'features/on_boarding/presentation/view/on_boarding_screens_view.dart';

import 'features/some_screens/presenation/view/create_presentation.dart';
import 'features/some_screens/presenation/view/easy_writer.dart';
import 'features/some_screens/presenation/view/email_writer.dart';
import 'features/some_screens/presenation/view/generate_image.dart';
import 'features/some_screens/presenation/view/how_to.dart';
import 'features/some_screens/presenation/view/text_summarizer.dart';
import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) {
        return BlocProvider(
          create: (_) => LanguageCubit(),
          child: BlocBuilder<LanguageCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                locale: locale,
                supportedLocales: const [
                  Locale('en'),
                  Locale('ar'),
                ],
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                routes: {
                  SplashView.routeName: (_) => const SplashView(),
                  OnBoardingScreensView.routeName: (_) => OnBoardingScreensView(),
                  HomeView.routeName: (_) => HomeView(),
                  IntroScreen.routeName: (_) => IntroScreen(),
                  LoginView.routeName: (_) => const LoginView(),
                  RegisterView.routeName: (_) => const RegisterView(),
                  ForgetPassword.routeName: (_) => const ForgetPassword(),
                  EnterCode.routeName: (_) => const EnterCode(),
                  HowTo.routeName: (_) => const HowTo(),
                  CreatePresentation.routeName: (_) => const CreatePresentation(),
                  EasyWriter.routeName: (_) => const EasyWriter(),
                  EmailWriter.routeName: (_) => const EmailWriter(),
                  GenerateImage.routeName: (_) => const GenerateImage(),
                  TextSummarizer.routeName: (_) => const TextSummarizer(),
                  AiChatView.routeName: (_) => const AiChatView(),
                },
                initialRoute: AiChatView.routeName,
              );
            },
          ),
        );
      },
    );
  }
}
