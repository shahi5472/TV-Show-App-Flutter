import 'package:flutter_tv_show/response/TVShowsResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ApiZ {
  static Future<TVShowsResponse> getMostPopularTVShows(int page) async {
    final response =
        await http.get('https://www.episodate.com/api/most-popular?page=$page');
    if (response.statusCode == 200) {
      var body = json.decode(response.body);

      TVShowsResponse tvShowsResponse = TVShowsResponse.fromJson(body);

      return tvShowsResponse;
    } else {
      throw Exception();
    }
  }
}
