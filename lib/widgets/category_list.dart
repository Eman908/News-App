import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/categories_cards.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  final List<CategoriesModels> tabs = [
    CategoriesModels(name: 'Business', categoryName: 'business'),
    CategoriesModels(name: 'Technology', categoryName: 'technology'),
    CategoriesModels(name: 'Entertainment', categoryName: 'entertainment'),
    CategoriesModels(name: 'Health', categoryName: 'health'),
    CategoriesModels(name: 'Science', categoryName: 'science'),
    CategoriesModels(name: 'Sports', categoryName: 'sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return CatgeoryCard(category: tabs[index]);
          }),
    );
  }
}
