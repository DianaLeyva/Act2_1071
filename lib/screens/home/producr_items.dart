import 'package:myapp/models/data_model.dart';
import 'package:myapp/screens/Detail/detail_screen.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemCount: productItems.length,
        itemBuilder: (context, index) {
          Size size = MediaQuery.of(context).size;
          final product = productItems[index];
          return Transform.translate(
            offset: Offset(0, index.isOdd ? 28 : 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(products: product),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: product.imageUrl,
                        child: Image.network(
                          product.imageUrl,
                          height: size.height * 0.25,
                          width: size.width * 0.45,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return SizedBox(
                              height: size.height * 0.25,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox(
                              height: size.height * 0.25,
                              width: size.width * 0.45,
                              child: const Center(
                                child: Icon(Icons.error),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      product.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      product.manufacturer,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
