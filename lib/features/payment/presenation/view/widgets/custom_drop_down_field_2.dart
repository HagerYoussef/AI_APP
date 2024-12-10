import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownField2 extends StatelessWidget {
  final String hint;
  final List<String> items;
  final Widget? icon;

  const CustomDropdownField2({
    Key? key,
    required this.hint,
    required this.items,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        _showMonthPicker(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 4.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            if (icon != null) icon!,

            Text(hint),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }


  void _showMonthPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {

                Navigator.pop(context);

                print("Selected: ${items[index]}");
              },
            );
          },
        );
      },
    );
  }
}
