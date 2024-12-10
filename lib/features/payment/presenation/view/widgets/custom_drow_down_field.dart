import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownField extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem<String>> items;
  final Widget? icon;

  const CustomDropdownField({
    Key? key,
    required this.hint,
    required this.items,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
          suffixIcon: icon ?? SizedBox.shrink(),
      ),
      items: items,
      onChanged: (value) {},
      icon: SizedBox.shrink(),
    );
  }
}
