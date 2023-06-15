import 'package:flutter_clean_architecture_news_app/core/resources/data_state.dart';
import 'package:flutter_clean_architecture_news_app/features/daily_news/domain/entities/article_entity/article_entity.dart';
import 'package:flutter_clean_architecture_news_app/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<ArticleEntity>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
