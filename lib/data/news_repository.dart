import 'package:graphql_flutter/graphql_flutter.dart';

import 'model/news.dart';

class NewsRepository {
  List<News> getNews(QueryResult results) {
    List<News> news = [];
    print("************************************************************************************");
    final allArticles = results.data?["allArticles"];
    for (int i = 0; i < allArticles.length; i++) {
      var article = allArticles[i];
      print("blabla");
      news.add(
        News(
          id: article["id"],
          title: article["title"],
          url: article["image"]?["url"] ?? "",
          hosted: article["hosted"],
          publicationDate: article["publicationDate"],
          sourceUrl: article["sourceUrl"],
          categories: getCategories(article),
        ),
      );
    }
    print("************************************************************************************");
    return news;
  }

  List<String> getCategories(Map<String, dynamic> article) {
    List<String> categories = [];
    var categoriesJson = article["categories"];
    for (int i = 0; i < categoriesJson.length; i++) {
      categories.add(categoriesJson[i]["name"]);
    }
    return categories;
  }
}
