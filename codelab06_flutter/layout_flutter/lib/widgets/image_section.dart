import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ), // margin kanan kiri
      child: Image.asset(image, width: 600, height: 240, fit: BoxFit.cover),
    );
  }
}
