class routelist {
  int? id;
  String? name;
  String? starttime;
  routelist({this.id, this.name,this.starttime});

  routelist.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["route"]["name"];
    starttime=json["start_timing"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = id;
    data["name"] = name;
    data["start_timing"]=starttime;

    return data;
  }
}
