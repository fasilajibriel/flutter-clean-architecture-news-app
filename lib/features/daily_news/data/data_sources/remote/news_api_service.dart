import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_news_app/core/constants/app_constants.dart';
import 'package:flutter_clean_architecture_news_app/features/daily_news/data/models/article_model/article_model.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<Response<ArticleModel>> getNewArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
