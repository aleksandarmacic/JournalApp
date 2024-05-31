import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    @Default("") String id,
    @Default("") String title,
    @Default("") String url,
    @Default(false) bool hosted,
    @Default("") String publisher,
    @Default("") String publicationDate,
    @Default("") String sourceUrl,
    @Default([]) List<String> categories,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
