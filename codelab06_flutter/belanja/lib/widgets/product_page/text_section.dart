import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 32, right: 32),
      child: Text(description, softWrap: true),
    );
  }
}