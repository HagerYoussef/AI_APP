import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/utils/image_paths.dart';
import '../../../../home/presentation/home_view.dart';
import 'social_button.dart';

class SocialButtons extends StatefulWidget {
  const SocialButtons({super.key});

  @override
  _SocialButtonsState createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool isLoading = false;

  Future<void> _signInWithGoogle(BuildContext context) async {
    setState(() {
      isLoading = true;
    });

    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

       if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
        final User? user = userCredential.user;

        if (user != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('isLoggedIn', true);

           Navigator.pushReplacementNamed(context, HomePage.routeName);
        } else {
          print("Google Sign-In failed");
        }
      } else {
        print("Google Sign-In failed");
      }
    } catch (error) {
      print("Error during Google Sign-In: $error");
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  Future<void> _signInWithApple(BuildContext context) async {
    setState(() {
      isLoading = true; // تفعيل حالة التحميل فورًا بعد اختيار الايميل
    });

    try {
      final AuthorizationCredentialAppleID credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // هنا يظهر اللودينج بعد اختيار الايميل وقبل البدء في التوثيق
      final OAuthCredential appleCredential = OAuthProvider("apple.com").credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(appleCredential);
      final User? user = userCredential.user;

      if (user != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);  // حفظ حالة تسجيل الدخول

        // بعد تسجيل الدخول بنجاح، إخفاء مؤشر التحميل والتوجه إلى الصفحة الرئيسية
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      } else {
        print("Apple Sign-In failed");
      }
    } catch (error) {
      print("Error during Apple Sign-In: $error");
    } finally {
      if (mounted) {  // تأكد من أن الـ widget لا يزال موجودًا قبل تغيير الحالة
        setState(() {
          isLoading = false; // إيقاف حالة التحميل بعد العملية
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () async {
                await _signInWithGoogle(context);
              },
              child: SocialButton(
                text: AppLocalizations.of(context)!.translate('con'),
                imagePath: ImagePaths.google,
              ),
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () async {
                await _signInWithApple(context);
              },
              child: SocialButton(
                text: AppLocalizations.of(context)!.translate('con2'),
                imagePath: ImagePaths.apple,
              ),
            ),
          ],
        ),

        if (isLoading)
          Positioned.fill(
            child: Center(
              child: CupertinoActivityIndicator(
                color: Colors.white,
                radius: 50,
              ),
            ),
          ),
      ],
    );
  }
}
