import 'package:belanja/widgets/list_product/list_product.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/product.dart';
import 'package:belanja/widgets/footer_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        code: 'prd01',
        name: 'IEM KZ-ZVX',
        price: 248000,
        image: 'assets/images/kz_zvx.webp',
        rating: 4.5,
        stock: 29,
        description:
            'IEM KZ-ZVX adalah in-ear monitor profesional yang menghadirkan kualitas suara jernih, bass kuat, dan detail frekuensi tinggi yang menakjubkan. Cocok untuk musisi, audio engineer, dan penggemar musik yang menginginkan pengalaman audio superior. Terbuat dari material berkualitas tinggi dengan desain ergonomis untuk kenyamanan pemakaian lama.',
      ),
      Product(
        code: 'prd02',
        name: 'RAM 32GB DDR5',
        price: 2128000,
        image: 'assets/images/ram.jpg',
        rating: 4.5,
        stock: 59,
        description:
            'RAM DDR5 32GB ini memberikan performa tinggi untuk gaming, rendering, dan multitasking berat. Dengan latency rendah dan bandwidth tinggi, RAM ini memastikan sistem tetap responsif dan stabil bahkan dalam beban kerja ekstrem. Kompatibel dengan motherboard modern dan mudah di-install.',
      ),
      Product(
        code: 'prd03',
        name: 'JBL BRX-300',
        price: 399800000,
        image: 'assets/images/jbl.webp',
        rating: 5,
        stock: 10,
        description:
            'Speaker JBL BRX-300 adalah solusi audio profesional dengan output tinggi dan kualitas suara premium. Dilengkapi dengan teknologi bass boost dan clarity tinggi untuk semua jenis musik. Ideal untuk konser, studio, dan event besar yang membutuhkan sound system handal.',
      ),
      Product(
        code: 'prd04',
        name: 'Raspberry Pi-5',
        price: 2580000,
        image: 'assets/images/raspberry.png',
        rating: 4.3,
        stock: 14,
        description:
            'Raspberry Pi-5 adalah mini komputer serbaguna untuk proyek IoT, edukasi, dan prototyping. Dibekali prosesor cepat, RAM cukup besar, dan berbagai port untuk koneksi eksternal. Mendukung Linux dan banyak library pemrograman, cocok untuk belajar coding, robotik, dan aplikasi kreatif lainnya.',
      ),
    ];

    return Column(
      children: [
        Expanded(child: ListProduct(products: products)),
        FooterSection(
          nama: '© Copyright 2025 - Dedy Bayu Setiawan',
          nim: '2341720041',
        ),
      ],
    );
  }
}
