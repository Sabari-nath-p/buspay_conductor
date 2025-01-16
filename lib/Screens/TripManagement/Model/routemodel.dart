class routelist {
  Route? route;

  routelist({this.route});

  routelist.fromJson(Map<String, dynamic> json) {
    route = json['route'] != null ? new Route.fromJson(json['route']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.route != null) {
      data['route'] = this.route!.toJson();
    }
    return data;
  }
}

class Route {
  int? id;
  String? name;
  Null? totalDistance;
  String? createdAt;
  String? updatedAt;

  Route(
      {this.id, this.name, this.totalDistance, this.createdAt, this.updatedAt});

  Route.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    totalDistance = json['total_distance'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['total_distance'] = this.totalDistance;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
