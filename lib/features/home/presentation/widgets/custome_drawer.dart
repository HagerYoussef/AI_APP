import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';

class CustomDrawer extends StatelessWidget {
  static const String routeName = 'drawer';

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: Container(

         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(17.r),
           color:  ColorApp.color2,
         ),
         child: ListView(

           children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                 icon: Image.asset(
                   ImagePaths.close,
                   width: 36.w,
                   height: 36.h,
                 ),
                 onPressed: () {
                   Navigator.of(context).pop();
                 },
                             ),
              ),
             SizedBox(height: 50,),
             ListTile(
               leading: Image.asset(
                 ImagePaths.diamond,
                 width: 24.w,
                 height: 24.h,
               ),
               title:  Text(
                 AppLocalizations.of(context)!.translate('pro'),
                 style: TextStyle(color: ColorApp.black_color),
               ),
               onTap: () {},
             ),
             ListTile(
               title:  Text(
                 AppLocalizations.of(context)!.translate('cold'),
                 style: TextStyle(color: ColorApp.black_color),
               ),
               onTap: () {},
             ),
             ListTile(
               title:  Text(
                 AppLocalizations.of(context)!.translate('perime'),
                 style: TextStyle(color: ColorApp.black_color),
               ),
               onTap: () {},
             ),
             ListTile(
               leading: Icon(Icons.language, color: ColorApp.black_color, size: 24.w),
               title:  Text(
                 AppLocalizations.of(context)!.translate('Social'),
                 style: TextStyle(color:ColorApp.black_color),
               ),
               onTap: () {},
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 16.w),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   IconButton(
                     icon: Image.asset(
                      ImagePaths.facebook,
                       width: 48.w,
                       height: 48.h,
                     ),
                     onPressed: () {},
                   ),
                   IconButton(
                     icon: Image.asset(
                      ImagePaths.youtube,
                       width: 48.w,
                       height: 48.h,
                     ),
                     onPressed: () {},
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
    );
  }
}
