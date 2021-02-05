import 'package:flutter_tv_show/models/Episode.dart';

class TVShowDetails {
  int id;
  String name;
  String permalink;
  String url;
  String description;
  String description_source;
  String start_date;
  String end_date;
  String country;
  String status;
  int runtime;
  String network;
  String youtube_link;
  String image_path;
  String image_thumbnail_path;
  String rating;
  String countdown;
  List<String> genres;
  List<String> pictures;
  List<Episode> episodes;

  TVShowDetails.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    permalink = json['permalink'];
    url = json['url'];
    description = json['description'];
    description_source = json['description_source'];
    start_date = json['start_date'];
    end_date = json['end_date'];
    country = json['country'];
    status = json['status'];
    runtime = json['runtime'];
    network = json['network'];
    youtube_link = json['youtube_link'];
    image_path = json['image_path'];
    image_thumbnail_path = json['image_thumbnail_path'];
    rating = json['rating'];
    countdown = json['countdown'];
    genres = json['genres'].cast<String>();
    pictures = json['pictures'].cast<String>();

    if (json['episodes'] != null) {
      episodes = [];
      json['episodes'].forEach((value) {
        episodes.add(Episode.fromJson(value));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['permalink'] = permalink;
    map['url'] = url;
    map['description'] = description;
    map['description_source'] = description_source;
    map['start_date'] = start_date;
    map['end_date'] = end_date;
    map['country'] = country;
    map['status'] = status;
    map['runtime'] = runtime;
    map['network'] = network;
    map['youtube_link'] = youtube_link;
    map['image_path'] = image_path;
    map['image_thumbnail_path'] = image_thumbnail_path;
    map['rating'] = rating;
    map['countdown'] = countdown;
    map['genres'] = genres;
    map['pictures'] = pictures;

    if (episodes != null) {
      map['episodes'] = episodes.map((value) {
        value.toJson();
      }).toList();
    }
    return map;
  }
}
