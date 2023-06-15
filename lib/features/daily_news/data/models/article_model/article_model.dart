import 'dart:convert';

import 'article.dart';

class ArticleModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  ArticleModel({this.status, this.totalResults, this.articles});

  @override
  String toString() {
    return 'ArticleModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  factory ArticleModel.fromMap(Map<String, dynamic> data) => ArticleModel(
        status: data['status'] as String?,
        totalResults: data['totalResults'] as int?,
        articles: (data['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'totalResults': totalResults,
        'articles': articles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ArticleModel].
  factory ArticleModel.fromJson(String data) {
    return ArticleModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ArticleModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
