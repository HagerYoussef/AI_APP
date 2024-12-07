import 'package:flutter/material.dart';

class HowToAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HowToAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
      child: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        backgroundColor: const Color(0xff19488E),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
