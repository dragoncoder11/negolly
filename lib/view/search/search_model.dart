 class SearchModel {
  final String? id;
  final String? name;
  final String? countryName;
  final String? cityName;
  final String? address;
  final String? cover;

  SearchModel(
      {required this.id,
      required this.name,
      required this.countryName,
      required this.cityName,
      required this.address,
      required this.cover});
  factory SearchModel.fromJson(json) {
    return SearchModel(
        id: json['_id'],
        name: json['name'],
        countryName: json['country']['name'],
        cityName: json['city']['name'],
        address: json['address'],
        cover: json['cover']);
  }
} 
/* 

class Autogenerated {
  List<Workspaces>? workspaces;
  int? limit;
  int? total;

  Autogenerated({this.workspaces, this.limit, this.total});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['workspaces'] != null) {
      workspaces = <Workspaces>[];
      json['workspaces'].forEach((v) {
        workspaces!.add(new Workspaces.fromJson(v));
      });
    }
    limit = json['limit'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.workspaces != null) {
      data['workspaces'] = this.workspaces!.map((v) => v.toJson()).toList();
    }
    data['limit'] = this.limit;
    data['total'] = this.total;
    return data;
  }
}

class Workspaces {
  String? sId;
  String? name;
  Country? country;
  Country? city;
  String? address;
  String? cover;

  Workspaces(
      {this.sId, this.name, this.country, this.city, this.address, this.cover});

  Workspaces.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    city = json['city'] != null ? new Country.fromJson(json['city']) : null;
    address = json['address'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    data['address'] = this.address;
    data['cover'] = this.cover;
    return data;
  }
}

class Country {
  String? sId;
  String? name;

  Country({this.sId, this.name});

  Country.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
} */