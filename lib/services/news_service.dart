import 'package:dio/dio.dart';
import 'package:news_app/models/newslist_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<NewslistModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=f817f730a8b54e85a25d95fe6d036d30');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> topNewsList = jsonData['articles'];

    List<NewslistModel> newsmodel = [];
    for (var topNewsItem in topNewsList) {
      NewslistModel newslistModel = NewslistModel(
          description: topNewsItem['description'],
          heading: topNewsItem['title'],
          image: topNewsItem['urlToImage']);

      newsmodel.add(newslistModel);
    }
    return newsmodel;
  }
}
