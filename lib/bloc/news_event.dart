import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable {}

class FetchNewsEvent extends NewsEvent {
  FetchNewsEvent({required this.query});
  String query;

  @override
  List<Object> get props => [];
}
