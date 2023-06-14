import 'dart:convert';

import 'article.dart';

class Articles {
  String? status;
  int? totalResults;
  List<ArticleModel>? articles;

  Articles({this.status, this.totalResults, this.articles});

  @override
  String toString() {
    return 'ArticleModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  factory Articles.fromMap(Map<String, dynamic> data) => Articles(
        status: data['status'] as String?,
        totalResults: data['totalResults'] as int?,
        articles: (data['articles'] as List<dynamic>?)?.map((e) => ArticleModel.fromMap(e as Map<String, dynamic>)).toList(),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'totalResults': totalResults,
        'articles': articles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ArticleModel].
  factory Articles.fromJson(String data) {
    return Articles.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ArticleModel] to a JSON string.
  String toJson() => json.encode(toMap());

  Articles copyWith({
    String? status,
    int? totalResults,
    List<ArticleModel>? articles,
  }) {
    return Articles(
      status: status ?? this.status,
      totalResults: totalResults ?? this.totalResults,
      articles: articles ?? this.articles,
    );
  }
}
