import 'package:myapp/models/data_model.dart';
import 'package:flutter/material.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: size.height * 0.06,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categoryList[index],
                      style: TextStyle(
                        color: isSelected ? Colors.black : Colors.black26,
                        fontSize: 18,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 4),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 3,
                      width: 26,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.orange : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
