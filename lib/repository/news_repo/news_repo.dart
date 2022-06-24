import '../../models/news_api.dart';

abstract class NewsRepo {
  Future<NewsApi?> getTechNewsFromRepo();
  Future<NewsApi?> getScienceNewsFromRepo();
  Future<NewsApi?> getHealthNewsFromRepo();
  Future<NewsApi?> getETNewsFromRepo();
  Future<NewsApi?> getSportsNewsFromRepo();
}
