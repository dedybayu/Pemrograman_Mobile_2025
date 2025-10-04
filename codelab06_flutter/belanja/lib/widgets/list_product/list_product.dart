import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';
import 'list_product_image.dart';
import 'list_product_info.dart';

class ListProduct extends StatelessWidget {
  final List<Product> products;

  const ListProduct({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DedyBayu Store (2341720041)"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/product', arguments: product);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductImage(product: product),
                      const SizedBox(height: 8),
                      ProductInfo(product: product),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
