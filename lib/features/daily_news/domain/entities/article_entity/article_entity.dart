import 'package:equatable/equatable.dart';

import 'source.dart';

class ArticleEntity extends Equatable {
  final String? title;
  final dynamic author;
  final Source? source;
  final String? publishedAt;
  final String? url;

  const ArticleEntity({
    this.title,
    this.author,
    this.source,
    this.publishedAt,
    this.url,
  });

  @override
  List<Object?> get props => [
        title,
        author,
        source,
        publishedAt,
        url,
      ];
}
