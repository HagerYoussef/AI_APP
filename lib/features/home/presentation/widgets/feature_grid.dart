import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/utils/image_paths.dart';
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
      children:    [

        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "How To");
          },
          child: FeatureCard(

            title: AppLocalizations.of(context)!.translate('HowTo'),
            description: AppLocalizations.of(context)!.translate('HowTo2'),
            iconPath:ImagePaths.image2 ,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Generate Image");
          },
          child: FeatureCard(
            title: AppLocalizations.of(context)!.translate('Code'),
            description: AppLocalizations.of(context)!.translate('Code2'),
            iconPath: ImagePaths.image3,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Create Presentation");
          },
          child: FeatureCard(
            title: AppLocalizations.of(context)!.translate('CreatePre'),
            description: AppLocalizations.of(context)!.translate('CreatePre2'),
            iconPath: ImagePaths.image4,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Email Writer");
          },
          child: FeatureCard(
            title: AppLocalizations.of(context)!.translate('EmailWriter'),
            description: AppLocalizations.of(context)!.translate('EmailWriter2'),
            iconPath: ImagePaths.image5,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Text Summarizer");
          },
          child: FeatureCard(
            title: AppLocalizations.of(context)!.translate('TextSummerizer'),
            description: AppLocalizations.of(context)!.translate('TextSummerizer2'),
            iconPath:ImagePaths.image6 ,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Easy Writer");
          },
          child: FeatureCard(
            title: AppLocalizations.of(context)!.translate('EasyWriter'),
            description: AppLocalizations.of(context)!.translate('EasyWriter'),
            iconPath:ImagePaths.image1 ,
          ),
        ),
      ],
    );
  }
}
