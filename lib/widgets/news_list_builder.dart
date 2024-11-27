import 'package:flutter/material.dart';
import 'package:news_app/models/newslist_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/error_message.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({required this.category, super.key});
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewslistModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(list: snapshot.data!);
          } else if (snapshot.hasError) {
            return const ErrorMessage(
              text: 'THERE WAS AN ERROR, PLEASE TRY AGAIN',
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
