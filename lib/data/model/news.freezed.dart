// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {String id = "",
      String title = "",
      String url = "",
      bool hosted = false,
      String publisher = "",
      String publicationDate = "",
      String sourceUrl = "",
      List<String> categories = const []}) {
    return _News(
      id: id,
      title: title,
      url: url,
      hosted: hosted,
      publisher: publisher,
      publicationDate: publicationDate,
      sourceUrl: sourceUrl,
      categories: categories,
    );
  }

  News fromJson(Map<String, Object?> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get hosted => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get publicationDate => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String url,
      bool hosted,
      String publisher,
      String publicationDate,
      String sourceUrl,
      List<String> categories});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? hosted = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? sourceUrl = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hosted: hosted == freezed
          ? _value.hosted
          : hosted // ignore: cast_nullable_to_non_nullable
              as bool,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: publicationDate == freezed
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String url,
      bool hosted,
      String publisher,
      String publicationDate,
      String sourceUrl,
      List<String> categories});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? hosted = freezed,
    Object? publisher = freezed,
    Object? publicationDate = freezed,
    Object? sourceUrl = freezed,
    Object? categories = freezed,
  }) {
    return _then(_News(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hosted: hosted == freezed
          ? _value.hosted
          : hosted // ignore: cast_nullable_to_non_nullable
              as bool,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: publicationDate == freezed
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  const _$_News(
      {this.id = "",
      this.title = "",
      this.url = "",
      this.hosted = false,
      this.publisher = "",
      this.publicationDate = "",
      this.sourceUrl = "",
      this.categories = const []});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final String url;
  @JsonKey()
  @override
  final bool hosted;
  @JsonKey()
  @override
  final String publisher;
  @JsonKey()
  @override
  final String publicationDate;
  @JsonKey()
  @override
  final String sourceUrl;
  @JsonKey()
  @override
  final List<String> categories;

  @override
  String toString() {
    return 'News(id: $id, title: $title, url: $url, hosted: $hosted, publisher: $publisher, publicationDate: $publicationDate, sourceUrl: $sourceUrl, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _News &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.hosted, hosted) &&
            const DeepCollectionEquality().equals(other.publisher, publisher) &&
            const DeepCollectionEquality()
                .equals(other.publicationDate, publicationDate) &&
            const DeepCollectionEquality().equals(other.sourceUrl, sourceUrl) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(hosted),
      const DeepCollectionEquality().hash(publisher),
      const DeepCollectionEquality().hash(publicationDate),
      const DeepCollectionEquality().hash(sourceUrl),
      const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(this);
  }
}

abstract class _News implements News {
  const factory _News(
      {String id,
      String title,
      String url,
      bool hosted,
      String publisher,
      String publicationDate,
      String sourceUrl,
      List<String> categories}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  bool get hosted;
  @override
  String get publisher;
  @override
  String get publicationDate;
  @override
  String get sourceUrl;
  @override
  List<String> get categories;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
