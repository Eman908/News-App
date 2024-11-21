import 'package:flutter/material.dart';
import 'package:news_app/models/newslist_model.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key});

  final List<NewslistModel> card = [
    NewslistModel(
        description:
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
        heading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        image: 'https://via.placeholder.com/150'),
    NewslistModel(
        description:
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
        heading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        image: 'https://via.placeholder.com/150'),
    NewslistModel(
        description:
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
        heading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        image: 'https://via.placeholder.com/150'),
    NewslistModel(
        description:
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
        heading: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        image: 'https://via.placeholder.com/150')
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: card.length,
            (context, index) {
      return NewsCard(news: card[index]);
    }));
  }
}
