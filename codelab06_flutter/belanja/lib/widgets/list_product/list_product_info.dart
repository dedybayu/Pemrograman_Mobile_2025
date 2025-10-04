import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';
import 'package:belanja/utils/price_formatter.dart';

class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                PriceFormatter.format(product.price),
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 20, 139, 30),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.red[500]),
              const SizedBox(width: 4),
              Text(product.rating.toStringAsFixed(1)),
            ],
          ),
        ),
      ],
    );
  }
}
