import 'package:flutter/material.dart';
import 'package:news_app/models/newslist_model.dart';

class NewsCard extends StatelessWidget {
   NewsCard({required this.news, super.key});
  final NewslistModel news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              news.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            news.heading,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            news.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
