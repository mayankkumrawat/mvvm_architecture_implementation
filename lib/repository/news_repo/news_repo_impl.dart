import '../../data/remote/api_service.dart';
import '../../models/news_api.dart';
import 'news_repo.dart';

class NewsRepoImpl extends NewsRepo {
  ApiService apiService = ApiService();

  @override
  Future<NewsApi?> getTechNewsFromRepo() async {
    dynamic response = await apiService.getTechNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }

  @override
  Future<NewsApi?> getScienceNewsFromRepo() async {
    dynamic response = await apiService.getScienceNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }

  @override
  Future<NewsApi?> getHealthNewsFromRepo() async {
    dynamic response = await apiService.getHealthNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }

  @override
  Future<NewsApi?> getETNewsFromRepo() async {
    dynamic response = await apiService.getETNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }

  @override
  Future<NewsApi?> getSportsNewsFromRepo() async {
    dynamic response = await apiService.getSportsNews();
    // debugPrint("NEWS REPO $response");
    final jsonData = NewsApi.fromJson(response);
    return jsonData;
  }
}
