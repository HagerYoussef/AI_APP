import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 50,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: '0000000',
          hintStyle:  TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: ColorApp.color4,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  BorderSide(color: ColorApp.white_color),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  BorderSide(color: ColorApp.white_color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  BorderSide(color:ColorApp.white_color),
          ),
        ),
      ),
    );
  }
}
