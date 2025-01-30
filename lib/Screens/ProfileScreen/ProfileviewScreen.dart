import 'package:buspay_conductor/Screens/AuthenticationScreen/AuthenticationScreen.dart';
import 'package:buspay_conductor/Screens/ProfileScreen/Profilecontroller.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:buspay_conductor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OwnerProfileScreen extends StatefulWidget {
  const OwnerProfileScreen({super.key});

  @override
  State<OwnerProfileScreen> createState() => _OwnerProfileScreenState();
}

class _OwnerProfileScreenState extends State<OwnerProfileScreen> {

  Profilecontroller profilectrl = Get.put(Profilecontroller());
   Widget buildSectionTitle(String title,
      {String? actionText, VoidCallback? onActionTap}) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // bank detial,change text
           TextLable.appText(title,size: 18.sp,color: Color.fromRGBO(0, 0, 0, 0.69),fontWeight: FontWeight.w500),
              if(actionText!=null)
               GestureDetector(
                onTap: onActionTap,
                child: TextLable.appText(actionText,size: 14.sp,color: Color.fromRGBO(0, 0, 0, 0.69),fontWeight: FontWeight.w600))
             
       
        ],
      ),
    );
  }

// profilecard
  Widget buildInfoCard(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Color.fromRGBO(151, 151, 151, 1), size: 20),
         SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLable.appText(label,size: 10.sp,color: Color.fromRGBO(0, 0, 0, 0.69),fontWeight: FontWeight.w400),
               TextLable.appText(value,size: 14.sp,color: Color.fromRGBO(0, 0, 0, 0.69),fontWeight: FontWeight.w600)
             
             
            ],
          ),
        ),
      ],
    );
  }
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading:  IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      
      title:TextLable.appText("Conductor Profile",size: 21.sp,fontWeight: FontWeight.w600,color: Colors.white,)
     )),
     body:GetBuilder<Profilecontroller>(
       builder: (_) {
         return Column(
          children: [
            SizedBox(height: 30.h,),
            Container(
               height: 86.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),

              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
               
                  children: [
                    Container(width: 50.w,height: 50.h,
                      margin: EdgeInsets.only(left: 8.w,top: 10.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffD9D9D9)),
                     child: 
                     TextLable.appText(profilectrl.name.isNotEmpty?profilectrl.name[0].toUpperCase():" ",size: 29.sp,fontWeight: FontWeight.w600,color: Color(0xff9797997)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w,top: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           TextLable.appText(profilectrl.name,size: 15.sp,fontWeight: FontWeight.w500,color:Colors.black),
                            TextLable.appText(profilectrl.mail,size: 14.sp,fontWeight: FontWeight.w400,color:Colors.black),
                        ],
                      ),
                    )
                
                  ],
                ),
              ),
            ),
              buildSectionTitle('Contact Details'),
                Container(
                  height: 200.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildInfoCard(
                            Icons.account_balance, 'Phone', profilectrl.phone),
                        const SizedBox(height: 7),
                        buildInfoCard(
                            Icons.home, 'Address', profilectrl.mail),
                        const SizedBox(height: 7),
                        buildInfoCard(Icons.pin_drop, 'Pincode', profilectrl.Pin),
                        const SizedBox(height: 7),
                        buildInfoCard(
                            Icons.location_on_outlined, 'District', 'Alappuzha'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      print("working");
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setString("LOGIN", "OUT");
                      login = "OUT";
         
                      while (Navigator.canPop(context)) Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => AuthenticationScreen()));
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      alignment: Alignment.center,
                      child:  TextLable.appTextPoppins("Log Out",size: 15.sp,fontWeight: FontWeight.w500,color:Colors.white),
                      // Text(
                      //   "LOG OUT",
                      //   style: GoogleFonts.poppins(
                      //       color: Colors.white, fontWeight: FontWeight.w500),
                      // ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF0F67B1)),
                    ),
                  ),
                )
          ],
         );
       }
     ) ,
    );
  }
}