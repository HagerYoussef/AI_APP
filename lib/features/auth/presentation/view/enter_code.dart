import 'package:ai_app/features/auth/presentation/view/widgets/field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/image_paths.dart';
import 'widgets/forget_email_button.dart';
import 'widgets/header_text.dart';

class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  static const String routeName = 'Enter Code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:  EdgeInsets.only(top: 94.h),
          child: Stack(children: [
            Positioned(
              child: Image.asset(
                ImagePaths.background,
                fit: BoxFit.cover,width: double.infinity,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.all(20.0.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Padding(
                          padding: EdgeInsets.all(8.0.h),
                          child: const Align(
                            alignment: AlignmentDirectional.topStart,
                            child: HeaderText(
                                title: "Enter Code",
                                subtitle:
                                    "Please enter the code we just sent you"),
                          )),
                       SizedBox(height: 40.h),
                      const Field(),
                       SizedBox(height: 20.h),
                      ForgotAndResendButton(
                        text: 'Resend Code ',
                        onPressed: () {},
                      )
                    ]),
              ),
            ),
          ])),
    );
  }
}
