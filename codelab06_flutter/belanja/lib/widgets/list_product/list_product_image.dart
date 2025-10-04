import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';

class ProductImage extends StatelessWidget {
  final Product product;

  const ProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Hero(
          tag: 'product_image_${product.code}',
          child: Image(
            image: AssetImage(product.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}