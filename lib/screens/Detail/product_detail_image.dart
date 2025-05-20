import 'package:flutter/material.dart';
import 'curve_image_side.dart';

class ProductDetailImages extends StatelessWidget {
  const ProductDetailImages({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveImageSide(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: size.height * 0.6,
              width: size.width,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return SizedBox(
                  height: size.height * 0.6,
                  child: const Center(child: CircularProgressIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return SizedBox(
                  height: size.height * 0.6,
                  child: const Center(child: Icon(Icons.error)),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
