import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';
import 'package:belanja/widgets/product_page/button_section.dart';
import 'package:belanja/widgets/product_page/review_section.dart';
import 'package:belanja/widgets/product_page/image_section.dart';
import 'package:belanja/widgets/product_page/text_section.dart';
import 'package:belanja/widgets/product_page/title_section.dart';
import 'package:belanja/utils/price_formatter.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final product = ModalRoute.of(context)!.settings.arguments as Product;
    final product = GoRouterState.of(context).extra as Product;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk dari DedyBayu Store"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ImageSection(
                    image: product.image,
                    name: product.name,
                    tag: 'product_image_${product.code}',
                  ),
                  TitleSection(
                    name: product.name,
                    price: PriceFormatter.format(product.price),
                    rating: product.rating,
                    stock: product.stock,
                  ),
                  TextSection(description: product.description),
                  ReviewSection(
                    reviews: [
                      {
                        'name': 'Bayu',
                        'text':
                            'Barang berkualitas, pengiriman cepat, dan harga terjangkau. Saya sangat puas dengan produk ini.',
                      },
                      {
                        'name': 'Sari',
                        'text':
                            'Barang ini sangat bagus dan berkualitas tinggi. Pengiriman cepat dan harga terjangkau. Saya sangat puas dengan produk ini.',
                      },
                    ],
                  ),
                ],
              ),
            ),
          ),
          ButtonSection(),
        ],
      ),
    );
  }
}
