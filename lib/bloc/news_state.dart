import 'package:equatable/equatable.dart';
import 'package:journal_app/data/model/news.dart';

abstract class NewsState extends Equatable {}

class NewsInitialState extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsLoadingState extends NewsState {
  @override
  List<Object> get props => [];
}

class NewsLoadedState extends NewsState {
  List<News> news;
  NewsLoadedState({required this.news});
  @override
  List<Object> get props => [];
}

class NewsErrorState extends NewsState {
  String message;
  NewsErrorState({required this.message});
  @override
  List<Object> get props => [];
}
