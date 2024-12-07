import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/image_paths.dart';
import 'widgets/auth_button.dart';
import 'widgets/email_field.dart';
import 'widgets/header_text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  static const String routeName = 'Forget Screen';

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
               Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: HeaderText(
                        title: "Forget Password",
                        subtitle: "We are the best chat platform"),
                  )),
              SizedBox(height: 40.h),
              const EmailField(),
               SizedBox(height: 20.h),
              AuthButton(
                onTap: () {},
                buttonText: 'Send',
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
