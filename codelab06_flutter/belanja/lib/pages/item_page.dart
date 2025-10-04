import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/utils/price_formatter.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk dari Dedy Bayu S."),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              itemArgs.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              PriceFormatter.format(itemArgs.price),
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 20, 139, 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
