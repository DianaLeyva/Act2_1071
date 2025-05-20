import 'package:myapp/screens/home/category_selection.dart';
import 'package:myapp/screens/home/producr_items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _myAppBar(),
            _mySearchBar(),
            const CategorySelection(),
            const Expanded(child: ProductItems()), // Asegura scroll
          ],
        ),
      ),
    );
  }

  Padding _mySearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            fillColor: Colors.white,
            hintText: "Search...",
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black26,
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }

  Padding _myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.arrow_back_ios, size: 25),
          Text(
            "Explore",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Icon(Icons.menu, size: 25), // Reemplazo de Image.asset
        ],
      ),
    );
  }
}
