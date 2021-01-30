class TVShow {
  int id;
  String name;
  String permalink;
  String start_date;
  String end_date;
  String country;
  String network;
  String status;
  String image_thumbnail_path;

  TVShow.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    permalink = json['permalink'];
    start_date = json['start_date'];
    end_date = json['end_date'] ?? '';
    country = json['country'];
    network = json['network'];
    status = json['status'];
    image_thumbnail_path = json['image_thumbnail_path'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["permalink"] = permalink;
    map["start_date"] = start_date;
    map["end_date"] = end_date ?? '';
    map["country"] = country;
    map["network"] = network;
    map["status"] = status;
    map["image_thumbnail_path"] = image_thumbnail_path;
    return map;
  }
}
