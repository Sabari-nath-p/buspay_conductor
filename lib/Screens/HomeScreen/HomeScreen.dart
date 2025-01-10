
import 'package:buspay_conductor/Screens/CollectionScreen/CollectionScreen.dart';
import 'package:buspay_conductor/Screens/HomeScreen/utils/ProgressIndication.dart';
import 'package:buspay_conductor/Screens/TripManagement/NotripScreen.dart';
import 'package:buspay_conductor/Screens/TripManagement/TripManagementSceen.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      title: Padding(
        padding: EdgeInsets.only(left: 35.w,top: 15.h),
        child: Text("Bus Pay",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
      ),
     )),
     body:    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h,),
      Stack(
        children: [
                     Container(
                        height: 136,
                        width: 344,
                        margin: EdgeInsets.only(top: 45.h,left: 8.w),
                        decoration: BoxDecoration(
                          color: Color(0xff0F67B1),
                          borderRadius: BorderRadius.circular(20.h),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 18.h),
                            child: Text(
                              'Start Locating',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                      width: 344,
                      height: 120,
                       margin: EdgeInsets.only(top: 5.h,left: 8.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.w),

                        border: Border.all(color: Colors.grey,width: 0.5.w)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 13.w,top: 10.h,right: 13.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Column(
                                   children: [
                                     Text(
                                          " A-One Travellers",
                                          style: GoogleFonts.poppins(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                         Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Haripad",
                                  style:GoogleFonts.lato (
                                    fontSize: 10,
                                    color: Color(0xff606060),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_forward,
                                    size: 12, color: Colors.black54),
                                SizedBox(width: 6),
                                Text(
                                  "Alappuzha",
                                  style: GoogleFonts.lato(
                                    fontSize: 10,
                                    color: Color(0xff606060),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                                   ],
                                 ),
                                    Row(
                              children: [
                               
                                SizedBox(width: 100),
                                Container(
                                  height: 30,
                                  width: 73,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 192, 2, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'On the Way',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                      
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                               ],
                             ),
                              
                                
                            
                                               
                            SizedBox(height: 12.h),
                           
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    Container(width:15.w ,height: 15.w,
                                                                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30.w)),),
                                 SizedBox(
                                width: 310.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(30.w)),
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: Colors.grey[300],
                                   valueColor: AlwaysStoppedAnimation(Colors.blue) ,
                                    minHeight: 4,
                                  ),
                                ),
                              ), 
                               Container(width:15.w ,height: 15.w,
                                                                    decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(30.w)),),
                  
                                ],  ),
                                 
                              ]
                             
                            ),
                            
                            
                            
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Karuvatta TB Junction",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "12:25 PM, 8 KM",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Thottappally North",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "12:45 PM, 12 KM",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  
        ]
      ),
         SizedBox(height: 15.h,),
         Padding(
           padding: EdgeInsets.only(left:15.w),
           child: Text("C Control",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 21.sp),),
         ),
       Row(
         children: [
           InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotripScreen()));
            },
             child: Container(width: 160.w,height: 120.h,
              margin: EdgeInsets.only(left: 15.w),
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white,border: Border.all(color: Colors.grey.shade200,width: 1.w)),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(width: 160.w,height: 61.h,
                  child: Image.asset("assets/images/bus.png")),
                 Text("Trip Manager",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black),)
               ],
             ),
             ),
           ),
           SizedBox(width: 15.w,),
            InkWell(
              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CollectionScreen()));
            },
              child: Container(width: 160.w,height: 120.h,
              margin: EdgeInsets.only(left: 10.w),
              alignment: Alignment.center,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white,border: Border.all(color: Colors.grey.shade200,width: 1.w)),
                         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(width: 160.w,height: 61.h,
                  child: Image.asset("assets/images/coin.png")),
                 Text("Collections",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w600,color: Colors.black),)
               ],
                         ),
                         ),
            ),
         ],
       ),
       Expanded(child: Container()),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
              width: 310.w,
              height: 50.w,
              
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:Color(0xff0F67B1),
                  borderRadius: BorderRadius.circular(10)),
              child: TextLable.appText("Verify Ticket",
                  size: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
      ),
      SizedBox(height: 20.h,)
    
     ],)
     
    
    );
  }
}