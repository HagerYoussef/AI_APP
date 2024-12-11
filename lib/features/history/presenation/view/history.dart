import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/image_paths.dart';
import '../../../payment/presenation/view/widgets/custome_app_bar.dart';

class History extends StatelessWidget {
  static const String routeName = 'History Screen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomeAppBar(
        title: "History",
        actionWidget: IconButton(
          onPressed: () {},
          icon: Image.asset(
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
              title: 'Yesterday',
              subtitle: '',
            ),
            const Divider(),

            _buildHistoryItem(
              title: 'Button Spacing Methods',
              subtitle: '4 days ago',
            ),
            const Divider(),

            _buildHistoryItem(
              title: 'تطبيقات لقراءة الكتب العلمية',
              subtitle: '3 weeks ago',
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.all(8.0.h),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Cairo',
              color: ColorApp.main_color,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Cairo',
            color: ColorApp.grey_color,
          ),
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
