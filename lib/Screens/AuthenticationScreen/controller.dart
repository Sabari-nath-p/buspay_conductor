import 'dart:convert';

import 'package:buspay_conductor/Screens/AuthenticationScreen/AuthenticationScreen.dart';
import 'package:buspay_conductor/Screens/HomeScreen/HomeScreen.dart';
import 'package:buspay_conductor/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;

  loginSend() async {
    print(emailController.text);
    print(passwordController.text);
    loading =  true;
    update();
    final Response = await post(Uri.parse(baseUrl+"/v1/auth/login"),headers: {
      "app-type":"conductor",
 
    },
   body: {
    "email" : emailController.text.trim(),
    "password": passwordController.text.trim()
   }
    );
      var data = json.decode(Response.body);
      print(Response.body);

    if(Response.statusCode==201){
      loading = false;
      update();
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', data["tokens"]["accessToken"]);
      prefs.setString('user', data['user']['name']);
      prefs.setInt('id', data['user']['id']);
      prefs.setString("LOGIN", "IN");
      Get.off(() => HomeScreen());

    } else{
      Fluttertoast.showToast(msg: data["meassage"]);
      loading = false;
      update();
    }
  }
}