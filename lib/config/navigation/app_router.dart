import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/data/model/news.dart';
import 'package:journal_app/ui/albumDetails/news_detail_screen.dart';
import 'package:journal_app/ui/home/home_screen.dart';

const String rootPath = "/";
const String newsDetailScreenPath = "/newsDetailScreen";

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    final args = json.encode(routeSettings.arguments);
    switch (routeSettings.name) {
      case rootPath:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case newsDetailScreenPath:
        return MaterialPageRoute(
          builder: (_) => NewsDetailScreen(
            news: News(
              id: json.decode(args)[0],
              title: json.decode(args)[1],
              url: json.decode(args)[2],
              publisher: json.decode(args)[3],
              publicationDate: json.decode(args)[4],
              categories: (json.decode(args)[5] as List<dynamic>).cast<String>(),
            ),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  void dispose() {}

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(tr("error")),
          ),
          body: Center(
            child: Text(tr("error")),
          ),
        );
      },
    );
  }
}
