import 'package:flutter/material.dart';
import 'package:layout_flutter/widgets/title_section.dart';
import 'package:layout_flutter/widgets/text_section.dart';
import 'package:layout_flutter/widgets/button_section.dart';
import 'package:layout_flutter/widgets/image_section.dart';
import 'package:layout_flutter/widgets/comment_section.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Dedy Bayu Setiawan (2341720041)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple, // warna appbar
          foregroundColor: Colors.white, // warna teks & icon
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Iki Layout Flutter'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              // nanti kamu bisa tambahkan widget lain di bawah ini
              ImageSection(image: 'images/djawatan.jpg'),
              TitleSection(
                name: 'Iki Djawatan Banyuwangi',
                location: 'Benculuk, Banyuwangi, Indonesia',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Alas Djawatan ing Banyuwangi kawentar amarga ana wit trembesi '
                    'gedhe-gedhe sing ngadheg jejeg, nggawe suasana magis koyo ing '
                    'film fantasi. Panggonan iki cocok kanggo njupuk foto, dolan '
                    'alam, utawa mung mlaku-mlaku santai ngrasakke hawa seger.',
              ),
              CommentSection(
                comments: [
                  {
                    'name': 'Bayu',
                    'text':
                        'Panggonane adem tenan, cocok kanggo liburan bareng keluarga.',
                  },
                  {
                    'name': 'Sari',
                    'text':
                        'Asri banget, foto-foto dadi apik koyo ing film fantasi 🌳✨.',
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
