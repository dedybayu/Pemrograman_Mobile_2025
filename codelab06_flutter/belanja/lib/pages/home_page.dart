import 'package:belanja/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final List<Item> items = [
        Item(name: 'Gula', price: 5000),
        Item(name: 'Telur', price: 10000),
        Item(name: 'Minyak Goreng', price: 15000),
     ];

    return ListItem(products: items);
  }
  
  
}