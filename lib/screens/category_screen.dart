import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({required this.category, super.key});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
