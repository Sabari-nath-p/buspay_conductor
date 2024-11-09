import 'package:buspay_conductor/Screens/utils/inputTextField.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TripManagementScreen extends StatefulWidget {
 TripManagementScreen({super.key});

  @override
  State<TripManagementScreen> createState() => _TripManagementScreenState();
}

class _TripManagementScreenState extends State<TripManagementScreen> {
  @override
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
        InputTextField(title: "Current Route",hint: "Route 01"),
        SizedBox(height: 5.h,),
         InputTextField(title: "Journey Start Time",hint: "10:00:00 AM"),
          SizedBox(height: 5.h,),
            InputTextField(title: "Trip Status",hint: "Oh Journey"),
          SizedBox(height: 10.h,),
       
           
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