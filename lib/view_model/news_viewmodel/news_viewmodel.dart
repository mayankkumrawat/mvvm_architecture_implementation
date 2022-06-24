import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mvvm_project_flutter/repository/news_repo/news_repo_impl.dart';
import '../../data/remote/api_response.dart';
import '../../models/news_api.dart';

class NewsVM extends GetxController {
  final newsRepo = NewsRepoImpl();
  ApiResponse<NewsApi> news = ApiResponse.loading();
  List<Datum> techNewsList = List.empty(growable: true);
  List<Datum> scienceNewsList = List.empty(growable: true);
  List<Datum> healthNewsList = List.empty(growable: true);
  List<Datum> etNewsList = List.empty(growable: true);
  List<Datum> sportsNewsList = List.empty(growable: true);

  void onNewsLoaded(ApiResponse<NewsApi> response, List<Datum> newslist) {
    newslist.addAll(response.data!.data);
    // scienceNewsList.addAll(response.data!.data);
    // healthNewsList.addAll(response.data!.data);
    // etNewsList.addAll(response.data!.data);
    // sportsNewsList.addAll(response.data!.data);
    update();
  }

  // void onTap(index) {
  // locator<NavigationService>().openDialog(newsList[index]);
  // }

  void fetchNews() async {
    //onUsersLoaded(ApiResponse.loading());
    newsRepo
        .getTechNewsFromRepo()
        .then(
            (value) => onNewsLoaded(ApiResponse.completed(value), techNewsList))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch"), techNewsList));
    newsRepo
        .getScienceNewsFromRepo()
        .then((value) =>
            onNewsLoaded(ApiResponse.completed(value), scienceNewsList))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch"), techNewsList));
    newsRepo
        .getHealthNewsFromRepo()
        .then((value) =>
            onNewsLoaded(ApiResponse.completed(value), healthNewsList))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch"), healthNewsList));
    newsRepo
        .getETNewsFromRepo()
        .then((value) => onNewsLoaded(ApiResponse.completed(value), etNewsList))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch"), etNewsList));
    newsRepo
        .getSportsNewsFromRepo()
        .then((value) =>
            onNewsLoaded(ApiResponse.completed(value), sportsNewsList))
        .onError((error, stackTrace) =>
            onNewsLoaded(ApiResponse.error("Unable to Fetch"), sportsNewsList));
  }

  void init() async {
    fetchNews();
  }

  @override
  void onInit() {
    super.onInit();
    init();
  }
}
