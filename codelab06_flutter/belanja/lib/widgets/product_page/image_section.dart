import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
    required this.tag,
    required this.name,
  });

  final String image;
  final String name;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ), // margin kanan kiri
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            '/preview-image',
            arguments: {'image': image, 'title': name, 'tag': tag},
          );
        },
        child: Hero(
          tag: tag,
          child: Image(
            image: AssetImage(image),
            width: 600,
            height: 240,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
