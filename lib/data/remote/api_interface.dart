abstract class ApiInterface {
  static const baseUrl = "https://inshorts.deta.dev/";

  Future<dynamic>? getTechNews();
  Future<dynamic>? getScienceNews();
  Future<dynamic>? getHealthNews();
  Future<dynamic>? getETNews();
  Future<dynamic>? getSportsNews();
}
