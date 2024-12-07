
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imagePath;

  const CircleImage(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1.0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
