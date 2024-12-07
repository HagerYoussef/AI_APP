import 'package:ai_app/features/some_screens/presenation/view/create_presentation.dart';
import 'package:ai_app/features/some_screens/presenation/view/easy_writer.dart';
import 'package:ai_app/features/some_screens/presenation/view/email_writer.dart';
import 'package:ai_app/features/some_screens/presenation/view/generate_image.dart';
import 'package:ai_app/features/some_screens/presenation/view/text_summarizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/auth/presentation/view/enter_code.dart';
import 'features/auth/presentation/view/forget_password.dart';
import 'features/auth/presentation/view/intro_screen_view.dart';
import 'features/auth/presentation/view/login_view.dart';
import 'features/auth/presentation/view/register_view.dart';
import 'features/home/presentation/home_view.dart';
import 'features/on_boarding/presentation/view/on_boarding_screens_view.dart';
import 'features/some_screens/presenation/view/how_to.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
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
          },
          initialRoute: CreatePresentation.routeName,
        );
      },
    );
  }
}
