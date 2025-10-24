import 'dart:io';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  final Color filterColor;
  final double filterOpacity;

  const DisplayPictureScreen({
    super.key,
    required this.imagePath,
    required this.filterColor,
    this.filterOpacity = 0.3,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // background netral, tidak kena filter
      appBar: AppBar(
        title: const Text('Display the Picture - 2341720041'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black, // area luar tetap hitam, tidak difilter
        alignment: Alignment.center,
        child: ClipRect( // memastikan filter hanya dalam batas gambar
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              filterColor.withOpacity(filterOpacity),
              BlendMode.color,
            ),
            child: Image.file(
              File(imagePath),
              fit: BoxFit.contain, // gambar penuh tanpa melampaui batas
            ),
          ),
        ),
      ),
    );
  }
}
