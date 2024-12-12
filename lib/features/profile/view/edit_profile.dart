import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/app_localization.dart';
import '../../../core/themes/colors.dart';
import '../../../core/utils/image_paths.dart';
import '../../payment/presenation/view/widgets/custom_button.dart';

class EditProfilePage extends StatelessWidget {
  static const String routeName = 'Edit Profile';

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController(
        text: AppLocalizations.of(context)!.translate('ziad2'));
    final TextEditingController usernameController = TextEditingController(
        text: AppLocalizations.of(context)!.translate('ziad3'));
    final TextEditingController phoneController = TextEditingController(
        text: AppLocalizations.of(context)!.translate('phone'));
    final TextEditingController emailController =
        TextEditingController(text: 'Ziad hamdy222@gmail.com');

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Align(
                  alignment:
                      AppLocalizations.of(context)!.locale.languageCode == 'ar'
                          ? Alignment.topRight
                          : Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.translate('cancel'),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: ColorApp.color21,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Image.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? Localizations.localeOf(context).languageCode == 'ar'
                          ? ImagePaths.image20
                          : ImagePaths.image22
                      : Localizations.localeOf(context).languageCode == 'ar'
                          ? ImagePaths.image19
                          : ImagePaths.image21,
                ),

              SizedBox(height: 20.h),
              _buildCustomTextField(
                controller: nameController,
                label: AppLocalizations.of(context)!.translate('name'),
                imageUrl: ImagePaths.person3,
              ),
              _buildCustomTextField(
                controller: usernameController,
                label: AppLocalizations.of(context)!.translate('usr'),
                imageUrl: ImagePaths.person3,
              ),
              _buildCustomTextField(
                controller: phoneController,
                label: AppLocalizations.of(context)!.translate('phonenum'),
                imageUrl: ImagePaths.call,
              ),
              _buildCustomTextField(
                controller: emailController,
                label: AppLocalizations.of(context)!.translate('emailAdd'),
                imageUrl: ImagePaths.email2,
              ),
              SizedBox(height: 30.h),
              CustomButton(
                text: AppLocalizations.of(context)!.translate('sv'),
                onPressed: () {},
                w: 357.w,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomTextField({
    required TextEditingController controller,
    required String label,
    required String imageUrl,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: ColorApp.color2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 15.w),
              child: Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Nunito Sans',
                      color: ColorApp.color4,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                width: 250.w,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
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
