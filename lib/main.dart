import 'package:buspay_conductor/Screens/AuthenticationScreen/AuthenticationScreen.dart';
import 'package:buspay_conductor/Screens/CollectionScreen/CollectionScreen.dart';
import 'package:buspay_conductor/Screens/HomeScreen/HomeScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

String baseUrl = "http://api.buspay.co/v1";
String login = "";
var authHead;
String? token;
void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  login = preferences.getString("LOGIN") ?? "";
  token = preferences.getString("accessToken");
  if(login=="IN")
    authHead = {
      "Content-Type": "application/json",
      "app-type": "conductor",
       'Authorization': 'Bearer $token',

    };


  runApp(
    buspay_conductor(),
  );
}

class buspay_conductor extends StatelessWidget {
  const buspay_conductor({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 850),
      builder: (context, child) => GetMaterialApp(
          home: (login == "IN") ? HomeScreen() : AuthenticationScreen()),
    );
  }
}
