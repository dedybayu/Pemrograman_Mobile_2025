import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galery Dedy Bayu (2341720041)',
      home: buildHomePage('Galery Squidward Tentacles'),
    );
  }

  Widget buildHomePage(String title) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Tampan dan Berani',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    const subTitle = Text(
      '"Tampan dan Berani" adalah lukisan karya Squidward Tentacles. '
      'Sering digambarkan tampan dan berani, meski pernah diejek '
      'sebagai “lebih cocok masuk tempat sampah”.',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Georgia', fontSize: 25),
    );

    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.yellow[800]),
        Icon(Icons.star, color: Colors.yellow[800]),
        Icon(Icons.star, color: Colors.yellow[800]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.brush, color: Colors.blue[500]), // ikon seni
                const Text('SENI:'),
                const Text('Abstrak'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[700],
                ), // ikon bintang = ketampanan
                const Text('NILAI:'),
                const Text('100/100'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.security,
                  color: Colors.red[400],
                ), // ikon perisai = keberanian
                const Text('BRAVE:'),
                const Text('MAX'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(children: [titleText, subTitle, ratings, iconList]),
    );

    final mainImage = Image.asset(
      'images/tampan_dan_berani.png',
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 440, child: leftColumn),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
