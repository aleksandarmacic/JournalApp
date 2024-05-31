import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal_app/data/graphq_service.dart';
import 'package:journal_app/data/news_repository.dart';

import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  late GraphqlService service;

  NewsBloc() : super(NewsInitialState()) {
    service = GraphqlService();
  }

  NewsState get initialState => NewsInitialState();

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is FetchNewsEvent) {
      final query = event.query;

      print("************************1111************************************************************");
      yield NewsLoadingState();
      try {
        final results = await service.performQuery(query);
        if (results.hasException) {
          yield NewsErrorState(message: results.exception!.graphqlErrors[0].toString());
        } else {
          print("************************1111************************************************************");

          var news = NewsRepository().getNews(results);
          print("************************1111************************************************************");

          yield NewsLoadedState(news: news);
        }
      } catch (e) {
        yield NewsErrorState(message: e.toString());
      }
    }
  }
}
