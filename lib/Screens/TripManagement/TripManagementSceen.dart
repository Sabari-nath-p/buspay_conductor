import 'dart:convert';

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

    String?selectedItem;
    List conductordata=[];
    TextEditingController jrnystartctrl=TextEditingController();
   
     List<dynamic> Assign=[];
     int?routeid;
     List status=["on Journey","Not started"];

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
       child: Column(
        children: [
           SizedBox(height: 25.h,),
           InputTextField(controller: jrnystartctrl,
          title: "Current Route",hint: "route 01"),
          SizedBox(height: 5.h,),
       
        SizedBox(height: 5.h,),
         InputTextField(controller: jrnystartctrl,
          title: "Journey Start Time",hint: "10:00:00 AM"),
          SizedBox(height: 5.h,),
           
          buildDropdown(labelText: "Trip Status", hintText: "On journey", items: status, onChanged:(newValue) {
                  setState(() {
                    selectedItem = newValue;
                  });
                }, ),
         
           
         Container(
              width: 320.w,
              height: 50.w,
              margin: EdgeInsets.only(left: 6.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:Color(0xff0F67B1),
                  borderRadius: BorderRadius.circular(10)),
              child: TextLable.appText("Update",
                  size: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
            
        ],
       ),
     ),
    );
  }
}

   