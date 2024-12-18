import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/screens/category_screen.dart';

class CatgeoryCard extends StatelessWidget {
  const CatgeoryCard({required this.category, super.key});
  final CategoriesModels category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryScreen(category: category.categoryName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: Center(
              child: Text(
            category.name,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
