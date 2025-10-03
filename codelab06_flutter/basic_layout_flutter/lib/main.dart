import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dedy Bayu Setiawan (2341720041)',
      home: Scaffold(
        appBar: AppBar(title: const Text('Container')),
        body: Center(child: _buildImageColumn()),
      ),
    );
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black26),
      child: Column(children: [_buildImageRow(1), _buildImageRow(3)]),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: AspectRatio(
        aspectRatio: 16 / 9, // Rasio
        child: Image.asset(
          'images/pic$imageIndex.jpg',
          fit: BoxFit.contain, // Fit
        ),
      ),
    ),
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}
