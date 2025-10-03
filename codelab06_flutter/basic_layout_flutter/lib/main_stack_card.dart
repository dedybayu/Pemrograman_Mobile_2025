import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showCard = false; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dedy Bayu Setiawan (2341720041)',
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack and Card')),
        body: Center(child: showCard ? _buildCard() : _buildStack()),
      ),
    );
  }

  // #docregion card
  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'PT.DBS Network',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Banyuwangi, Jawa Timur'),
              leading: Icon(Icons.restaurant_menu, color: Colors.blue[500]),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(62) 1234567890',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.contact_phone, color: Colors.blue[500]),
            ),
            ListTile(
              title: const Text('dedybayu@dbsnetwork.my.id'),
              leading: Icon(Icons.contact_mail, color: Colors.blue[500]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/pic4.jpg'),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black45),
          child: const Text(
            'Squid',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}