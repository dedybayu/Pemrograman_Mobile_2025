import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/product_page.dart';
import 'package:belanja/pages/preview_image.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/product': (context) => ProductPage(),
      '/preview-image': (context) => PreviewImage(),
    },
  ));
}