class routemodel {
  int? id;
  int? busId;
  int? routeId;
  String? startTiming;
  List<String>? daysOfWeek;
  String? finishTiming;
  String? createdAt;
  String? updatedAt;
  Route? route;

  routemodel(
      {this.id,
      this.busId,
      this.routeId,
      this.startTiming,
      this.daysOfWeek,
      this.finishTiming,
      this.createdAt,
      this.updatedAt,
      this.route});

  routemodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    busId = json['bus_id'];
    routeId = json['route_id'];
    startTiming = json['start_timing'];
    daysOfWeek = json['days_of_week'].cast<String>();
    finishTiming = json['finish_timing'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    route = json['route'] != null ? new Route.fromJson(json['route']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bus_id'] = this.busId;
    data['route_id'] = this.routeId;
    data['start_timing'] = this.startTiming;
    data['days_of_week'] = this.daysOfWeek;
    data['finish_timing'] = this.finishTiming;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
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
