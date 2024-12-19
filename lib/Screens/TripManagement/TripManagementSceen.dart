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
      void initState(){
    super.initState();
    }
    fetchconductor(String userID)async{
    final Response=await http.get(Uri.parse(baseUrl+"/v1/user/$userID"));
    if(Response.statusCode==200){
    setState(() {
      
     conductordata =json.decode(Response.body)["data"]["id"] ;
     print(conductordata);
    });
   }
   else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Unable to load data")));
     
   }
  

   }
   
   Future<void> fetchroute({required String busId}) async {
   final Response = await http.get(Uri.parse(baseUrl+"/v1/route-bus?bus_id=$busId"));
   if(Response.statusCode==200){
    setState(() {
      
     Assign =json.decode(Response.body)["data"] ;
    });
   }
   else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Unable to load data")));
     
   }
  }
   
     void tripmanage()async{
      if(routeid==null||jrnystartctrl.text.isEmpty||selectedItem==null){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please fill all data")));
          return;
          }

        SharedPreferences preferences = await SharedPreferences.getInstance();
        String token = preferences.getString("accessToken").toString();
        final trip ={
          "route_id":routeid,
       
        };
        final Response = await http.post(Uri.parse(baseUrl+"/v1/trips"),headers:{
          'Content-Type': 'application/json',
    "Authorization" : "Bearer $token",
        },body:json.encode(trip)
        );
         if (Response.statusCode == 201) {
   
      Navigator.pop(
        context,
      );
    } else {
    
      ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
            content: Text('Failed to update trip . Please try again.')),
      );
    }
   print(Response.body);
          }
         
  
  




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      title: Text("Manage Trip",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
     )),
     body: Padding(
       padding:  EdgeInsets.only(left: 15.w,right: 15.w),
       child: Column(
        children: [
           SizedBox(height: 25.h,),
           buildDropdown(labelText: "Current Route", 
           hintText: "Route 1", 
           items: Assign,
           value: routeid, 
           fieldName: "name",
           keyId: "id",
           onChanged: (newValue){
            setState(() {
              print("route$newValue");
              routeid=newValue;
            });
           }),
       
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

     Widget buildDropdown(
      {required String labelText,
      required String hintText,
      var value,
      required List items,
      required Function(dynamic) onChanged,
      String fieldName = "",
      String keyId = ""}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 8.h),
        Text(
          labelText,
          style:
              GoogleFonts.inter( fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      SizedBox(height: 8.h),
      Container(
          height: 48.h,
          width: 360.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 222, 222),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color.fromRGBO(242, 244, 245, 1)),
          ),
          child: DropdownButtonFormField<dynamic>(
            value: value,
            decoration: InputDecoration(
              isCollapsed: true,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 18.w),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.inter(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem(
                value: (keyId == "") ? item : item[keyId],
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Text(
                    (fieldName == "") ? item : item[fieldName],
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

 