import 'dart:convert';

import 'source.dart';

class ArticleModel {
  String? title;
  dynamic author;
  Source? source;
  String? publishedAt;
  String? url;

  ArticleModel({
    this.title,
    this.author,
    this.source,
    this.publishedAt,
    this.url,
  });

  @override
  String toString() {
    return 'Article(title: $title, author: $author, source: $source, publishedAt: $publishedAt, url: $url)';
  }

  factory ArticleModel.fromMap(Map<String, dynamic> data) => ArticleModel(
        title: data['title'] as String?,
        author: data['author'] as dynamic,
        source: data['source'] == null ? null : Source.fromMap(data['source'] as Map<String, dynamic>),
        publishedAt: data['publishedAt'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'author': author,
        'source': source?.toMap(),
        'publishedAt': publishedAt,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Article].
  factory ArticleModel.fromJson(String data) {
    return ArticleModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Article] to a JSON string.
  String toJson() => json.encode(toMap());

  ArticleModel copyWith({
    String? title,
    dynamic author,
    Source? source,
    String? publishedAt,
    String? url,
  }) {
    return ArticleModel(
      title: title ?? this.title,
      author: author ?? this.author,
      source: source ?? this.source,
      publishedAt: publishedAt ?? this.publishedAt,
      url: url ?? this.url,
    );
  }
}
