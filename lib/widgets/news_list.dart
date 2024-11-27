import 'package:flutter/material.dart';
import 'package:news_app/models/newslist_model.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({required this.list, super.key});
  final List<NewslistModel> list;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsCard(news: list[index]);
      }, childCount: list.length),
    );
  }
}
