import 'package:ai_app/core/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/localization/app_localization.dart';
import '../../core/themes/colors.dart';

class ClearAll extends StatefulWidget {
  static const String routeName = 'Clear Screen';

  @override
  State<ClearAll> createState() => _ClearAllState();
}

class _ClearAllState extends State<ClearAll> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Container(
      width:382.w,
      height: 268.h,
      child: AlertDialog(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.all(20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

             Text(
               AppLocalizations.of(context)!.translate('clean'),
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
             SizedBox(height: 10.h),

            // Subtitle
            Text(
              AppLocalizations.of(context)!.translate('are2'),
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 20.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),

                  Text(
                    AppLocalizations.of(context)!.translate('understand')  ,style: TextStyle(
                      fontSize: 12.sp,

                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            // Confirm Button
            GestureDetector(
              onTap: () {

              },
              child: Container(
                width: double.infinity,
                padding:  EdgeInsets.symmetric(vertical: 15.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: ColorApp.color34
                ),
                child:  Center(
                  child:Image.asset(
                   ImagePaths.delete
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
