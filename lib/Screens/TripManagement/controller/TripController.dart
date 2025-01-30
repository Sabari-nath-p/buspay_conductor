import 'dart:convert';
import 'dart:ffi';
import 'package:buspay_conductor/Screens/TripManagement/Model/routemodel.dart';

import 'package:buspay_conductor/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

var auth;

class Tripcontroller extends GetxController {
  loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString("accessToken").toString();
    auth = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  List<routelist> routelists = [];
  int? selectedRoute;
  String?starttiming;

  Future<void> fetchroute() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString("accessToken").toString();
    // routelists.clear();
    final response = await get(Uri.parse(baseUrl + "/route-bus"), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      for (var data in json.decode(response.body)['data']) {
        routelists.add(routelist.fromJson(data));

        update();
      }
        print(response.body);
    } else {
      throw Exception('Failed to load route');
    }
    update();

    print(response);
  }

  

// int RoutetoID(var name) {
//     for (var data in routelists) {
//       if (data.route?.name == name) {
//         return data.route?.id ?? -1;
//       }
//     }
//     return -1;
//   }

//   String RouteToName(var name) {
//     for (var data in routelists) {
//       if (data.route?.id.toString() == name.toString()) {
//         return data.route?.name ?? "";
//       }
//     }
//     return "--:--";
//   }

  @override
  void onInit() {
    super.onInit();
    loadUser();
    fetchroute();
    

  }
}
