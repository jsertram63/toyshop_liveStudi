  

class sitesModel {
  List<Sites>? sites;

  sitesModel({this.sites});

  sitesModel.fromJson(Map<String, dynamic> json) {
    if (json['sites'] != null) {
      sites = <Sites>[];
      json['sites'].forEach((v) {
        sites!.add(new Sites.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sites != null) {
      data['sites'] = this.sites!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sites {
  Geometry? geometry;
  String? sId;
  String? nom;
  String? pays;
  String? photo;
  int? iV;

  Sites({this.geometry, this.sId, this.nom, this.pays, this.photo, this.iV});

  Sites.fromJson(Map<String, dynamic> json) {
    geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
    sId = json['_id'];
    nom = json['nom'];
    pays = json['pays'];
    photo = json['photo'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.geometry != null) {
      data['geometry'] = this.geometry!.toJson();
    }
    data['_id'] = this.sId;
    data['nom'] = this.nom;
    data['pays'] = this.pays;
    data['photo'] = this.photo;
    data['__v'] = this.iV;
    return data;
  }
}

class Geometry {
  Coordinates? coordinates;
  String? type;

  Geometry({this.coordinates, this.type});

  Geometry.fromJson(Map<String, dynamic> json) {
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}

class Coordinates {
  double? lat;
  double? lon;

  Coordinates({this.lat, this.lon});

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}