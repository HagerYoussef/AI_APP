import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/localization/app_localization.dart';
import 'core/themes/colors.dart';
import 'features/ai_chat/presentation/view/ai_chat_view.dart';
import 'features/ai_chat/presentation/view/widgets/voice.dart';
import 'features/auth/presentation/view/enter_code.dart';
import 'features/auth/presentation/view/forget_password.dart';
import 'features/auth/presentation/view/intro_screen_view.dart';
import 'features/auth/presentation/view/login_view.dart';
import 'features/auth/presentation/view/register_view.dart';
import 'features/history/presenation/view/history.dart';
import 'features/home/presentation/home_view.dart';
import 'features/home/presentation/widgets/custome_drawer.dart';
import 'features/language/presentation/view/language.dart';
import 'features/language/presentation/view_model/cubit/language_cubit.dart';
import 'features/on_boarding/presentation/view/on_boarding_screens_view.dart';
import 'features/payment/presenation/view/payment_view.dart';
import 'features/payment/presenation/view/widgets/payment_card_screen.dart';
import 'features/payment/presenation/view/widgets/success_payment.dart';
import 'features/profile/view/edit_profile.dart';
import 'features/profile/view/profile.dart';
import 'features/profile/view_model/cubit/theme_cubit.dart';
import 'features/small_widgets/clear_all.dart';
import 'features/small_widgets/log_out.dart';
import 'features/some_screens/presenation/view/create_presentation.dart';
import 'features/some_screens/presenation/view/easy_writer.dart';
import 'features/some_screens/presenation/view/email_writer.dart';
import 'features/some_screens/presenation/view/generate_image.dart';
import 'features/some_screens/presenation/view/how_to.dart';
import 'features/some_screens/presenation/view/text_summarizer.dart';
import 'features/splash/presentation/view/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          child: BlocProvider(
            create: (_) => ThemeCubit(),
            child: BlocBuilder<LanguageCubit, Locale>(
              builder: (context, locale) {
                return BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, themeState) {
                    return MaterialApp(
                      theme: ThemeData.light().copyWith(
                        primaryColor:ColorApp.white_color,
                        scaffoldBackgroundColor: ColorApp.white_color,
                        appBarTheme: AppBarTheme(
                          backgroundColor: Colors.white,
                          iconTheme: IconThemeData(color: ColorApp.dark_color),
                        ),
                        textTheme: TextTheme(
                          bodyLarge: TextStyle(color: ColorApp.dark_color),
                        ),
                      ),
                      darkTheme: ThemeData.dark().copyWith(
                        primaryColor: Color(0xff26262B),
                        scaffoldBackgroundColor: ColorApp.dark_color,
                        appBarTheme: AppBarTheme(
                          backgroundColor: ColorApp.dark_color,
                          iconTheme: IconThemeData(color: ColorApp.white_color),
                        ),
                        textTheme: TextTheme(
                          bodyLarge: TextStyle(color: ColorApp.white_color),
                        ),
                      ),
                      themeMode: themeState == ThemeState.light ? ThemeMode.light : ThemeMode.dark,
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
                        HomePage.routeName: (_) => HomePage(),
                        IntroScreen.routeName: (_) => IntroScreen(),
                        LoginView.routeName: (_) => const LoginView(),
                        RegisterView.routeName: (_) => const RegisterView(),
                        ForgetPassword.routeName: (_) =>  ForgetPassword(),
                        EnterCode.routeName: (_) => const EnterCode(),
                        HowTo.routeName: (_) => const HowTo(),
                        CreatePresentation.routeName: (_) => const CreatePresentation(),
                        EasyWriter.routeName: (_) => const EasyWriter(),
                        EmailWriter.routeName: (_) => const EmailWriter(),
                        GenerateImage.routeName: (_) => const GenerateImage(),
                        TextSummarizer.routeName: (_) => const TextSummarizer(),
                        AiChatView.routeName: (_) => const AiChatView(),
                        VoicePage.routeName: (_) => const VoicePage(),
                        CustomDrawer.routeName: (_) =>  CustomDrawer(),
                        PaymentScreen.routeName: (_) =>  PaymentScreen(),
                        ProfileScreen.routeName: (_) =>  ProfileScreen(),
                        PaymentCardScreen.routeName: (_) =>  PaymentCardScreen(),
                        SuccessPayment.routeName: (_) =>  SuccessPayment(),
                        EditProfilePage.routeName: (_) =>  EditProfilePage(),
                        History.routeName: (_) =>  History(),
                        LogOutDialog.routeName: (_) =>  LogOutDialog(),
                        LanguageSelectionPage.routeName: (_) =>  LanguageSelectionPage(),
                        ClearAll.routeName: (_) =>  ClearAll(),
                      },
                      initialRoute: SplashView.routeName,
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
