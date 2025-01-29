import 'dart:convert';

import 'package:buspay_conductor/Screens/TripManagement/Model/routemodel.dart';
import 'package:buspay_conductor/Screens/TripManagement/controller/TripController.dart';
import 'package:buspay_conductor/Screens/TripManagement/utils/LocationScreen.dart';
import 'package:buspay_conductor/Screens/utils/inputTextField.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:buspay_conductor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
class TripManagementScreen extends StatefulWidget {
 TripManagementScreen({super.key});

  @override
  State<TripManagementScreen> createState() => _TripManagementScreenState();
}

class _TripManagementScreenState extends State<TripManagementScreen> {
  @override
     



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(70.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading:  IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      title: Text("Manage Trip",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
     )),
     body: Padding(
       padding:  EdgeInsets.only(left: 15.w,right: 15.w),
       child:  LiveLocationScreen(),
     ),
    );
  }
}

   