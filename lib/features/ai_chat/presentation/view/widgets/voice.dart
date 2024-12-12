import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/localization/app_localization.dart';
import '../../../../../core/themes/colors.dart';

class VoicePage extends StatelessWidget {
  const VoicePage({super.key});
  static const String routeName = 'Voice Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorApp.color19, ColorApp.color20],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 30.h),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    AppLocalizations.of(context)!.translate('Go'),
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 100.h),
                  Image.asset(
                    ImagePaths.bubble,
                    width: 276.w,
                    height: 356.h,
                  ),

                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                  ImagePaths.data,
                    width: 40.w,
                    height: 40.h,
                  ),
                  Image.asset(
                   ImagePaths.voice,
                    width: 162.w,
                    height: 162.h,
                  ),
                  Image.asset(
                    ImagePaths.x,
                    width: 40.w,
                    height: 40.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
