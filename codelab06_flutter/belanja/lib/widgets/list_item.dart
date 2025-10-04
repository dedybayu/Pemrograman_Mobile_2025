import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ListItem extends StatelessWidget {
  final List<Item> products;

  // Terima daftar produk melalui constructor
  const ListItem({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk Dedy Bayu (2341720041)"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: product);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Rp ${product.price}',
                          textAlign: TextAlign.end,
                          style: const TextStyle(color: Color.fromARGB(255, 3, 63, 16)),
                        ),
                      ),
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