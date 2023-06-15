import 'dart:convert';

import 'source.dart';

class Article {
  String? title;
  dynamic author;
  Source? source;
  String? publishedAt;
  String? url;

  Article({
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

  factory Article.fromMap(Map<String, dynamic> data) => Article(
        title: data['title'] as String?,
        author: data['author'] as dynamic,
        source: data['source'] == null
            ? null
            : Source.fromMap(data['source'] as Map<String, dynamic>),
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
  factory Article.fromJson(String data) {
    return Article.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Article] to a JSON string.
  String toJson() => json.encode(toMap());
}
