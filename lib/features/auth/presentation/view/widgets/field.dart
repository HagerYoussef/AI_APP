import 'package:flutter/material.dart';
import '../../../../../core/themes/colors.dart';

class Field extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // مضاف لدعم التغيير

  const Field({
    super.key,
    required this.controller,
    this.onChanged, // تمرير onChanged كمعامل اختياري
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 50,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: '0000000',
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: ColorApp.color4,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorApp.white_color),
          ),
        ),
        style: TextStyle(
            color: Colors.white
        ),
      ),

    );
  }
}
