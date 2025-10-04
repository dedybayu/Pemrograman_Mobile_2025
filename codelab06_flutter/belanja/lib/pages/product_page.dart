import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';
import 'package:belanja/widgets/product_page/button_section.dart';
import 'package:belanja/widgets/product_page/review_section.dart';
import 'package:belanja/widgets/product_page/image_section.dart';
import 'package:belanja/widgets/product_page/text_section.dart';
import 'package:belanja/widgets/product_page/title_section.dart';
import 'package:belanja/utils/price_formatter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Product;

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
                    image: itemArgs.image,
                    name: itemArgs.name,
                    tag: 'product_image_${itemArgs.code}',
                  ),
                  TitleSection(
                    name: itemArgs.name,
                    price: PriceFormatter.format(itemArgs.price),
                    rating: itemArgs.rating,
                    stock: itemArgs.stock,
                  ),
                  TextSection(description: itemArgs.description),
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
