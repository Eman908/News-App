import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';

class CatgeoryCard extends StatelessWidget {
  const CatgeoryCard({required this.category, super.key});
  final CategoriesModels category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 85,
        width: 160,
        child: Center(
            child: Text(
          category.name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: AssetImage(category.image), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
