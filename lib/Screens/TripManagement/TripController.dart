import 'dart:convert';
import 'dart:ffi';
import 'package:buspay_conductor/Screens/TripManagement/Model/routemodel.dart';

import 'package:buspay_conductor/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
var auth;
class  Tripcontroller extends GetxController{
     loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString("accessToken").toString();
    auth = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  List<routelist>route=[];

Future<void>fetchroute()async{
    route.clear();
    final response= await get(Uri.parse(baseUrl+"/route-bus"));
   if (response.statusCode == 200) {
      for (var data in json.decode(response.body)['data']['route']) {
        route.add(routelist.fromJson(data));
      }
    } else {
      throw Exception('Failed to load route');
    }
    update();

}
@override
void onInit(){
    super.onInit();
      loadUser();
    fetchroute();
  

   
}

}