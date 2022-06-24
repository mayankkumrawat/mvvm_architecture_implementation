import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_interface.dart';
import 'endpoints.dart';

class ApiService extends ApiInterface {
  @override
  Future? getTechNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response =
        await client.get(Uri.parse(ApiInterface.baseUrl + Endpoints.tech));
    responseJson = returnTechResponse(response);
    return responseJson;
  }

  dynamic returnTechResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      //throw FetchDataException(
      //  'Error occured while communication with server' +
      //    ' with status code : ${response.statusCode}');
    }
  }

  @override
  Future? getScienceNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response =
        await client.get(Uri.parse(ApiInterface.baseUrl + Endpoints.science));
    responseJson = returnScienceResponse(response);
    return responseJson;
  }

  dynamic returnScienceResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      //throw FetchDataException(
      //  'Error occured while communication with server' +
      //    ' with status code : ${response.statusCode}');
    }
  }

  @override
  Future? getHealthNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response =
        await client.get(Uri.parse(ApiInterface.baseUrl + Endpoints.health));
    responseJson = returnHealthResponse(response);
    return responseJson;
  }

  dynamic returnHealthResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      //throw FetchDataException(
      //  'Error occured while communication with server' +
      //    ' with status code : ${response.statusCode}');
    }
  }

  @override
  Future? getETNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response = await client
        .get(Uri.parse(ApiInterface.baseUrl + Endpoints.entertainment));
    responseJson = returnETResponse(response);
    return responseJson;
  }

  dynamic returnETResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      //throw FetchDataException(
      //  'Error occured while communication with server' +
      //    ' with status code : ${response.statusCode}');
    }
  }

  @override
  Future? getSportsNews() async {
    var client = http.Client();
    dynamic responseJson;
    final response =
        await client.get(Uri.parse(ApiInterface.baseUrl + Endpoints.sports));
    responseJson = returnSportsResponse(response);
    return responseJson;
  }

  dynamic returnSportsResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
      //throw BadRequestException(response.toString());
      case 401:
      case 403:
      //throw UnauthorisedException(response.body.toString());
      case 404:
      //throw UnauthorisedException(response.body.toString());
      case 500:
      default:
      //throw FetchDataException(
      //  'Error occured while communication with server' +
      //    ' with status code : ${response.statusCode}');
    }
  }
}
