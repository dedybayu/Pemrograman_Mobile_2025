import 'package:flutter/material.dart';
import 'button_with_text.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.purple;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ButtonWithText(
              color: color,
              icon: Icons.shopping_cart, 
              label: 'TAMBAH KE KERANJANG',
              backgroundColor: Colors.blue,
            ),
          ),
          Expanded(
            child: ButtonWithText(
              color: color,
              icon: Icons.payment, 
              label: 'BELI SEKARANG',
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

