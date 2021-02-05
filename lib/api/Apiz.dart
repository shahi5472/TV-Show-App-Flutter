import 'package:flutter_tv_show/response/TVShowDetailsResponse.dart';
import 'package:flutter_tv_show/response/TVShowsResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

final baseUrl = 'https://www.episodate.com/api/';

class ApiZ {
  static Future<TVShowsResponse> getMostPopularTVShows(int page) async {
    final response = await http.get(baseUrl + 'most-popular?page=$page');
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      TVShowsResponse tvShowsResponse = TVShowsResponse.fromJson(body);

      return tvShowsResponse;
    } else {
      throw Exception();
    }
  }

  static Future<TVShowDetailsResponse> getTVShowDetails(String tvShowId) async {
    final response = await http.get(baseUrl + 'show-details?q=$tvShowId');
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      TVShowDetailsResponse tvShowDetailsResponse =
          TVShowDetailsResponse.fromJson(body);

      return tvShowDetailsResponse;
    } else {
      throw Exception();
    }
  }
}
