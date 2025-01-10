import 'package:buspay_conductor/Screens/TripManagement/utils/RegisterTripBottom.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotripScreen extends StatefulWidget {
  const NotripScreen({super.key});

  @override
  State<NotripScreen> createState() => _NotripScreenState();
}

class _NotripScreenState extends State<NotripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      title: Text("Manage Trip",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
     )),
      body: Column(
      
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
         SizedBox(height: 250.h,),
           Image.asset("assets/images/notrip.png"),
          
          TextLable.appTextPoppins("No Trip Started",
                  size: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(231, 217, 217, 217)),
                   TextLable.appText("Click Start to Continue",
                  size: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffD9D9D9)),

                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                     _showBottomSheet(context);
                    },
                    child: Container(
                                     width: 320.w,
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
                  ),
                   
                  SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40.w)),
    ),
    builder: (context) =>  BottomTripRegisterScreen(),
  );
}