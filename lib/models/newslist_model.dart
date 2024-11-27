class NewslistModel {
  String? image;
  String heading;
  String? description;

  NewslistModel(
      {required this.description, required this.heading, required this.image});

  factory NewslistModel.fromJson(json) {
    return NewslistModel(
        description: json['description'],
        heading: json['title'],
        image: json['urlToImage']);
  }
}
