
import 'package:buspay_conductor/Screens/TripManagement/TripController.dart';

import 'package:buspay_conductor/Screens/utils/inputTextField.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class BottomTripRegisterScreen extends StatefulWidget {
   BottomTripRegisterScreen ({super.key});

  @override
  State<BottomTripRegisterScreen> createState() => _BottomTripRegisterScreenState();
}

class _BottomTripRegisterScreenState extends State<BottomTripRegisterScreen> {
int?selectedroute;

  @override
  final Tripcontroller tctrl = Get.put(Tripcontroller());
  

  Widget build(BuildContext context) {
    return Container(
      
     width: double.infinity,
      height: 297.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.w),topRight: Radius.circular(20.w),),color: Colors.white,
      boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6.7,
            offset: Offset(0, -1),
          ),
        ],),
      child: Column(
        children: [
          SizedBox(height: 20.h,),
          TextLable.appText("Register Trip",color: Colors.black,size: 16.sp,fontWeight: FontWeight.w600),
          Container(width: 105.w,height: 1.h,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(60.w)),
),
                 
          SizedBox(height: 20.h),

           buildDropdown(labelText: 'Select route Id', hintText:"route 01", 
           value: selectedroute,
           items: tctrl.routelist.map((Value)=>Value.route).toList(),
           fieldName:'name', 
            keyId :'id',
            onChanged:(newValue){
              setState(() {
                selectedroute=newValue;
              });
            }),
          Container(
            width: 290.w,
            height: 50.w,
            margin: EdgeInsets.only(left: 6.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color:Color(0xff0F67B1),
                borderRadius: BorderRadius.circular(10)),
            child: TextLable.appText("Start",
                size: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
             SizedBox(height: 6.h,),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: TextLable.appText(
               "Get Back",
                 size: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
            ),
          ),

        ],
      ),
    );
  }
}