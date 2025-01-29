import 'dart:convert';

import 'package:buspay_conductor/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

class Profilecontroller extends GetxController{
  
   int id=0;
   loadconductor()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String token = pref.getString('token').toString(); 
    final headers=authHead;
    id = pref.getInt('user_id')??0;
  
    loadprofile();
    update();
   }
    String name="";
    String mail='';
    String phone="";
    String address="";
    String Pin="";
    String?ProfileImage;

    loadprofile()async{
      final response= await get(Uri.parse(baseUrl+"/user/$id"),
      headers: authHead
      );
      print(authHead);
      if(response.statusCode==200){
        var data = json.decode(response.body);
        print(data);
        name = data['data']['name'].toString();
        mail=data['data']['email'].toString();
        phone=data['data']['phone'].toString();
        address=data['data']['address'].toString();
        Pin=data['data']['pincode'].toString();
        ProfileImage=data['data']['profile_image'];
        update();

      }
      else{
        Fluttertoast.showToast(msg:response.body);
      }
      

    }
    @override
  void onInit(){
     super.onInit();
     loadconductor();
  }

   
}