import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/widgets/categories_cards.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  final List<CategoriesModels> tabs = [
    CategoriesModels(name: 'General', image: 'assets/general.jpeg'),
    CategoriesModels(name: 'Business', image: 'assets/business.jpeg'),
    CategoriesModels(name: 'Technology', image: 'assets/technology.jpeg'),
    CategoriesModels(name: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoriesModels(name: 'Health', image: 'assets/health.avif'),
    CategoriesModels(name: 'Science', image: 'assets/science.avif'),
    CategoriesModels(name: 'Sports', image: 'assets/sports.jpeg'),
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
