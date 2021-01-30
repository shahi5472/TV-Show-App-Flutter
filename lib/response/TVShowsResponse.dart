import 'package:flutter_tv_show/models/TVShow.dart';

class TVShowsResponse {
  String total;
  int page;
  int pages;

  List<TVShow> tv_shows;

  TVShowsResponse.fromJson(dynamic json) {
    total = json['total'];
    page = json['page'];
    pages = json['pages'];
    if (json['tv_shows'] != null) {
      tv_shows = [];
      json["tv_shows"].forEach((v) {
        tv_shows.add(TVShow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["total"] = total;
    map["page"] = page;
    map["pages"] = pages;
    map["tv_shows"] = tv_shows.map((value) => value.toJson()).toList();
    return map;
  }
}
