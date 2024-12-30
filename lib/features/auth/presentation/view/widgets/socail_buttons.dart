import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/utils/image_paths.dart';
import 'social_button.dart';

class SocialButtons extends StatelessWidget {
  SocialButtons({super.key});

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        Navigator.pushReplacementNamed(context, 'Home Screen');
      }
    } catch (error) {
      print("Error during Google Sign-In: $error");
    }
  }
  Future<void> _signInWithApple(BuildContext context) async {
    try {
      final AuthorizationCredentialAppleID credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );
  print('Apple Sign-In Success');
      print('Apple ID Token: ${credential.identityToken}');


      Navigator.pushReplacementNamed(context, 'Home SCreen');
    } catch (error) {
      print("Error during Apple Sign-In: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
           // await _signInWithGoogle(context);
          },
          child: SocialButton(
            text: AppLocalizations.of(context)!.translate('con'),
            imagePath: ImagePaths.google,
          ),
        ),
        SizedBox(height: 20.h),
        InkWell(
          onTap: () async {
           // await _signInWithApple(context);
          },
          child: SocialButton(
            text: AppLocalizations.of(context)!.translate('con2'),
            imagePath: ImagePaths.apple,
          ),
        ),
      ],
    );
  }
}
