import 'package:ai_app/core/themes/colors.dart';
import 'package:ai_app/core/utils/image_paths.dart';
import 'package:ai_app/features/ai_chat/presentation/view/ai_chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/app_localization.dart';

class AiChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AiChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        color:  ColorApp.color2,
        borderRadius:  BorderRadius.only(
          bottomRight: Radius.circular(15.r),
          bottomLeft: Radius.circular(15.r),
        ),
        boxShadow:  [
          BoxShadow(
            color:ColorApp.shadow,
            blurRadius: 8.8,
            offset: const Offset(0, 4),
          ),
        ],
        border:  Border(
          bottom: BorderSide(
            color:  ColorApp.color5,
            width: 0.5.w,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
          ),
          Image.asset(
            ImagePaths.ai,
            width: 53.w,
            height: 53.h,
          ),
          SizedBox(width: 10,),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(AppLocalizations.of(context)!.translate('good'),
              style: TextStyle(
                fontSize: 20.sp,
                color: ColorApp.white_color,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cairo'

              ),
              ),
              Text(AppLocalizations.of(context)!.translate('Ziad Williamson'),style: TextStyle(
                fontWeight: FontWeight.w400,
                  color: ColorApp.white_color,
                fontSize: 12.sp
              ),)
            ],
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(right: 8.w),
            child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "Voice Screen");
                },
                child: Image.asset(ImagePaths.record)),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(88);
}
