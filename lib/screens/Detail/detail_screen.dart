import 'package:myapp/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/Detail/curve_image_side.dart'; // Asegúrate de importar correctamente

class DetailScreen extends StatelessWidget {
  final ProductModel products;

  const DetailScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CurveImageSide(),
                child: Image.network(
                  products.imageUrl,
                  height: size.height * 0.45,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return SizedBox(
                      height: size.height * 0.45,
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  products.manufacturer,
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  products.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Price: \$${products.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
