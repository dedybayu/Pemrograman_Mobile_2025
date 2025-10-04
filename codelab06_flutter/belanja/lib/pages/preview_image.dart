import 'package:flutter/material.dart';

class PreviewImage extends StatelessWidget {
  const PreviewImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil argument
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    final image = args['image'];
    final tag = args['tag'];
    final title = args['title'];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(title.toString()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: image != null
            ? Hero(
                tag: tag,
                child: InteractiveViewer(
                  panEnabled: true, // geser
                  scaleEnabled: true, // zoom
                  minScale: 1.0,
                  maxScale: 5.0,
                  child: SizedBox.expand(
                    child: Image.asset(image.toString(), fit: BoxFit.contain),
                  ),
                ),
              )
            : const Text('No image provided'),
      ),
    );
  }
}
