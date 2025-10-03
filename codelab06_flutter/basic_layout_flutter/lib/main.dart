import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dedy Bayu Setiawan (2341720041)',
      home: Scaffold(
        appBar: AppBar(title: const Text('List Wisata di Banyuwangi')),
        body: Center(child: showGrid ? _buildGrid() : _buildList()),
      ),
    );
  }

  Widget _buildGrid() => GridView.count(
    crossAxisCount: 3,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(12),
  );

  List<Widget> _buildGridTileList(int count) =>
      List.generate(count, (i) => Image.asset('images/pic$i.jpg'));

  Widget _buildList() {
    return ListView(
      children: [
        _tile('Pantai Pulau Merah', 'Pantai dengan pasir merah & sunset indah', Icons.beach_access),
        _tile('Kawah Ijen', 'Fenomena blue fire yang mendunia', Icons.landscape),
        _tile('Pantai Plengkung (G-Land)', 'Surga bagi peselancar internasional', Icons.surfing),
        _tile('Taman Nasional Baluran', 'Dikenal sebagai “Africa van Java”', Icons.park),
        _tile('Teluk Hijau', 'Air laut hijau jernih & pasir putih', Icons.water),
        const Divider(),
        _tile('Pantai Boom', 'Dekat kota, sering untuk festival & konser', Icons.festival),
        _tile('Air Terjun Jagir', 'Dijuluki “air terjun kembar”', Icons.waterfall_chart),
        _tile('Pantai Wedi Ireng', 'Pantai eksotis yang masih alami', Icons.nature),
        _tile('Pantai Sukamade', 'Habitat penyu, bisa lihat pelepasan tukik', Icons.pets),
        _tile('De Djawatan Benculuk', 'Hutan trembesi mirip setting film Lord of the Rings', Icons.forest),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }
}
