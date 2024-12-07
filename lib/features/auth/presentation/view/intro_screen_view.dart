import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/auth/presentation/view/widgets/back_ground_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // استيراد المكتبة
import '../../../../core/themes/app_colors.dart';
import 'widgets/content_section.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = 'Intro Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor1,
      body: Stack(
        children: [
          BackgroundImage(),
          ContentSection(),
        ],
      ),
    );
  }
}





