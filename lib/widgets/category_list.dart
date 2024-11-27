import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/categories_cards.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  final List<CategoriesModels> tabs = [
    CategoriesModels(
        name: 'Business',
        image: 'assets/business.jpeg',
        categoryName: 'business'),
    CategoriesModels(
        name: 'Technology',
        image: 'assets/technology.jpeg',
        categoryName: 'technology'),
    CategoriesModels(
        name: 'Entertainment',
        image: 'assets/entertaiment.avif',
        categoryName: 'entertainment'),
    CategoriesModels(
        name: 'Health', image: 'assets/health.avif', categoryName: 'health'),
    CategoriesModels(
        name: 'Science', image: 'assets/science.avif', categoryName: 'science'),
    CategoriesModels(
        name: 'Sports', image: 'assets/sports.jpeg', categoryName: 'sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return CatgeoryCard(category: tabs[index]);
          }),
    );
  }
}
