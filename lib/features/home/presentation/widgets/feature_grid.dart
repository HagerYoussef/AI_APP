import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'future_card.dart';

class FeatureGrid extends StatelessWidget {
  const FeatureGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 16.w,
      crossAxisSpacing: 16.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      childAspectRatio: 167 / 120,
      physics: const NeverScrollableScrollPhysics(),
      children:  const [
        FeatureCard(
          title: 'How To',
          description: 'Generates step-by-step instructions for a given task.',
          iconPath: 'assets/images/home/Rectangle 21 (1).png',
        ),
        FeatureCard(
          title: 'Code Generator',
          description: 'Create code snippets based on given requirements.',
          iconPath: 'assets/images/home/Rectangle 21 (2).png',
        ),
        FeatureCard(
          title: 'Create Presentation',
          description: 'Make a presentation accurately and creatively.',
          iconPath: 'assets/images/home/Rectangle 21 (3).png',
        ),
        FeatureCard(
          title: 'Email Writer',
          description: 'Generate emails based on given prompts.',
          iconPath: 'assets/images/home/Rectangle 21 (3).png',
        ),
        FeatureCard(
          title: 'Text Summarizer',
          description: 'Extract main ideas from given texts.',
          iconPath: 'assets/images/home/Rectangle 21 (4).png',
        ),
        FeatureCard(
          title: 'Essay Writer',
          description: 'Generate human-like essays based on prompts.',
          iconPath: 'assets/images/home/Rectangle 21 (5).png',
        ),
      ],
    );
  }
}
