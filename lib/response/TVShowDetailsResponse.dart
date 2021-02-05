import 'package:flutter_tv_show/models/TVShowDetails.dart';

class TVShowDetailsResponse {
  TVShowDetails tvShowDetails;

  TVShowDetailsResponse.fromJson(dynamic json) {
    tvShowDetails = TVShowDetails.fromJson(json['tvShow']);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (tvShowDetails != null) {
      map['tvShow'] = tvShowDetails.toJson();
    }
    return map;
  }
}
