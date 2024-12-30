import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../data/auth_reposatory.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';
import '../view_model/auth.dart';
import 'widgets/forget_email_button.dart';
import 'widgets/header_text.dart';
import 'widgets/field.dart';

class EnterCode extends StatelessWidget {
  const EnterCode({super.key});

  static const String routeName = 'Enter Code';

  @override
  Widget build(BuildContext context) {
    final codeController = TextEditingController();

    return ChangeNotifierProvider<AuthViewModel>(
      create: (_) => AuthViewModel(),
      child: Scaffold(
        backgroundColor: ColorApp.white_color,
        body: Padding(
          padding: EdgeInsets.only(top: 94.h),
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  ImagePaths.background,
                  fit: BoxFit.cover, width: double.infinity,
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: HeaderText(
                            title: AppLocalizations.of(context)!.translate('enter'),
                            subtitle: AppLocalizations.of(context)!.translate('plase'),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Field(controller: codeController),
                      SizedBox(height: 20.h),
                      Consumer<AuthViewModel>(
                        builder: (context, authViewModel, _) {
                          return ForgotAndResendButton(
                            text: AppLocalizations.of(context)!.translate('send'),
                            onPressed: () async {
                              final code = codeController.text;

                              if (code.isNotEmpty) {
                                try {
                                  await authViewModel.verifyResetCode(code);
                                  if (authViewModel.isCodeVerified) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('تم التحقق من الكود بنجاح!'),backgroundColor: Colors.green,),
                                    );
                                    Navigator.pushNamed(context, 'Home Screen');
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('الكود غير صحيح، حاول مرة أخرى'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  }
                                } catch (error) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('فشل في التحقق من الكود: '),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('يرجى إدخال الكود'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
