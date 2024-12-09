import 'package:ai_app/features/home/presentation/widgets/banner_section.dart';
import 'package:ai_app/features/home/presentation/widgets/custom_nav_bar.dart';
import 'package:ai_app/features/home/presentation/widgets/feature_grid.dart';
import 'package:ai_app/features/home/presentation/widgets/feature_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerSection(),
            FeatureText(),
            SizedBox(height: 16),
            FeatureGrid(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}






