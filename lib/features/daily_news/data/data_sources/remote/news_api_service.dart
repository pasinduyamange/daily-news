import 'package:dio/dio.dart';
import 'package:news_app/features/daily_news/data/models/article.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/constants/constants.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticle({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
