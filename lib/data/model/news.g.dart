// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      url: json['url'] as String? ?? "",
      hosted: json['hosted'] as bool? ?? false,
      publisher: json['publisher'] as String? ?? "",
      publicationDate: json['publicationDate'] as String? ?? "",
      sourceUrl: json['sourceUrl'] as String? ?? "",
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'hosted': instance.hosted,
      'publisher': instance.publisher,
      'publicationDate': instance.publicationDate,
      'sourceUrl': instance.sourceUrl,
      'categories': instance.categories,
    };
