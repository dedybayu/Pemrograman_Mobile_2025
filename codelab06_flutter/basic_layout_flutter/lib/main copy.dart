import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; // Remove to suppress visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: Center(child: packingWiget()),
      ),
    );
  }

  Widget packingWiget() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );

  Widget buildRow() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(child: Image.asset('images/djawatan.jpg')),
      Expanded(flex: 2, child: Image.asset('images/cabai.jpg')),
      Expanded(child: Image.asset('images/djawatan.jpg')),
    ],
  );

  Widget buildColumn() => Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        'images/djawatan.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
      Image.asset(
        'images/cabai.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
      Image.asset(
        'images/djawatan.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ],
  );
}
