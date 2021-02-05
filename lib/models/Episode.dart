class Episode {
  int season;
  int episode;
  String name;
  String airDate;

  Episode.fromJson(dynamic json) {
    season = json['season'];
    episode = json['episode'];
    name = json['name'];
    airDate = json['air_date'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['season'] = season;
    map['episode'] = episode;
    map['name'] = name;
    map['air_date'] = airDate;
    return map;
  }
}
