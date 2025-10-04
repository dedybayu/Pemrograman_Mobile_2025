import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final String nama;
  final String nim;
  final Color textColor;

  const FooterSection({
    super.key,
    required this.nama,
    required this.nim,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: Colors.grey[200], 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            nama,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
              decoration: TextDecoration.none
            ),
          ),
          const SizedBox(height: 4),
          Text(
            nim,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
              decoration: TextDecoration.none
            ),
          ),
        ],
      ),
    );
  }
}
