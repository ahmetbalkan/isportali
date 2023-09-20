import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiProvider {
  final String _baseUrl = 'www.yenibiris.com';

  Future<Map<String, dynamic>> postWithQueryParams<T>(
      String endpoint, Map<String, dynamic> queryParams) async {
    try {
      print(queryParams);
      final Uri uri = Uri.https(
        _baseUrl,
        "/api/$endpoint",
        queryParams,
      );
      final response = await http.post(
        uri,
      );

      return jsonDecode(response.body);
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  Future<Response> getWithQueryParams<T>(
      String endpoint, Map<String, dynamic> queryParams) async {
    try {
      final Uri uri = Uri.https(
        _baseUrl,
        "/api/$endpoint",
        queryParams,
      );
      final response = await http.get(
        uri,
      );

      return response;
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  Future<http.StreamedResponse> getWithQueryParams2(String endpoint,
      Map<String, dynamic> queryParams, Map<String, String> headers) async {
    try {
      final Uri uri = Uri.https(
        _baseUrl,
        "/api/$endpoint",
        queryParams,
      );

      var request = http.Request('GET', uri);

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      return response;
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  Future<Response> postWithData(
      String endpoint, Map<String, dynamic> bodyParams) async {
    final Uri uri = Uri.https(_baseUrl, "/api/$endpoint");
    final response = await http.post(
      uri,
      body: bodyParams,
      encoding: Encoding.getByName('utf-8'),
    );
    return response;
  }

  Future<http.Response> postRequest(
      String endpoint, Map<String, String> bodyParams) async {
    final Uri uri = Uri.https('www.yenibiris.com', "/api/$endpoint");
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    final response = await http.post(
      uri,
      headers: headers,
      body: bodyParams,
      encoding: Encoding.getByName('utf-8'),
    );
    return response;
  }

  Future<http.Response> postWithDataAndParams(
      {required String endpoint,
      required Map<String, dynamic> data,
      required Map<String, String> queryParameters}) async {
    final Uri uri =
        Uri.https('www.yenibiris.com', "/api/$endpoint", queryParameters);

    var headers = {
      'Content-Type': 'application/json',
      'Cookie': 'User_Info={"CookieUsageDisplayed":true,"Version":1}'
    };

    final request = http.Request('POST', uri)
      ..headers.addAll(headers)
      ..body = jsonEncode(data);

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    return response;
  }
}
