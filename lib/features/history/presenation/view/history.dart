import 'package:ai_app/features/small_widgets/clear_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/app_localization.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';
import '../../../payment/presenation/view/widgets/custome_app_bar.dart';
import '../../../profile/view_model/cubit/theme_cubit.dart';

class History extends StatelessWidget {
  static const String routeName = 'History Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(
        title: AppLocalizations.of(context)!.translate('history'),
        actionWidget: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ClearAll();
              },
            );
          },
          icon: isArabic(AppLocalizations.of(context)!.translate('history'))
              ? Image.asset(
            ImagePaths.history_img2,
            width: 100.w,
            height: 100.h,
          )
              : Image.asset(
            ImagePaths.history_image,
            width: 100.w,
            height: 100.h,
          ),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHistoryItem(
              title: AppLocalizations.of(context)!.translate('yesterday'),
              subtitle: '',
            ),
            const Divider(),
            _buildHistoryItem(
              title: 'Button Spacing Methods',
              subtitle: AppLocalizations.of(context)!.translate('four'),
            ),
            const Divider(),
            _buildHistoryItem(
              title: 'تطبيقات لقراءة الكتب العلمية',
              subtitle: AppLocalizations.of(context)!.translate('three'),
            ),
            const Divider(),
            _buildHistoryItem(
              subtitle: '',
              title: 'about web design',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem({required String title, required String subtitle}) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Align(
              alignment: isArabic(title)
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(
                title,
                textAlign: isArabic(title) ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Cairo',
                  color: state == ThemeState.dark
                      ? ColorApp.white_color
                      : ColorApp.main_color,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Align(
            alignment: isArabic(subtitle)
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Text(
              subtitle,
              textAlign: isArabic(subtitle) ? TextAlign.right : TextAlign.left,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Cairo',
                color: ColorApp.grey_color,
              ),
            ),
          ),
          SizedBox(height: 8.h),
        ],
      );
    });
  }

  bool isArabic(String text) {
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }
}
