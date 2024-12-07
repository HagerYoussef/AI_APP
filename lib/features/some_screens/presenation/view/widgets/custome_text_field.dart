import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 26.w,
        vertical: 23.h,
      ),
      child: Container(
        width: 367.w,
        height: 63.h,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Image.asset('assets/images/share.png'),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 16.sp,
            ),
            border: _buildBorder(),
            focusedBorder: _buildBorder(),
            enabledBorder: _buildBorder(),
            contentPadding: EdgeInsets.symmetric(
              vertical: 12.h,
              horizontal: 16.w,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(47.r),
      borderSide:  BorderSide(
        color: const Color(0xff1A4B99),
        width: 2.w,
      ),
    );
  }
}
