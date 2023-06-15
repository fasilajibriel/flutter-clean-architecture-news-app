import 'package:flutter_clean_architecture_news_app/core/resources/data_state.dart';
import 'package:flutter_clean_architecture_news_app/features/daily_news/domain/entities/article_entity/article_entity.dart';

abstract class ArticleRepository {
  Future<DataState<ArticleEntity>> getNewsArticles();
}
