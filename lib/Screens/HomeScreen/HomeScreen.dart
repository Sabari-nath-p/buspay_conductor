import 'package:buspay_conductor/Screens/CollectionScreen/CollectionScreen.dart';
import 'package:buspay_conductor/Screens/CollectionScreen/collectionViewScreen.dart';
import 'package:buspay_conductor/Screens/HomeScreen/utils/ProgressIndication.dart';
import 'package:buspay_conductor/Screens/ProfileScreen/ProfileviewScreen.dart';
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
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.h),
            child: AppBar(
              backgroundColor: Color(0xff0F67B1),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                "Bus Pay",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, color: Colors.white),
              ),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
        
          
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text(
                "C Control",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21.sp),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotripScreen()));
                  },
                  child: Container(
                    width: 160.w,
                    height: 120.h,
                    margin: EdgeInsets.only(left: 15.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.shade200, width: 1.w)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 160.w,
                            height: 61.h,
                            child: Image.asset("assets/images/bus.png")),
                        Text(
                          "Trip Manager",
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CollectionScreen()));
                  },
                  child: Container(
                    width: 160.w,
                    height: 120.h,
                    margin: EdgeInsets.only(left: 10.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.shade200, width: 1.w)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 160.w,
                            height: 61.h,
                            child: Image.asset("assets/images/coin.png")),
                        Text(
                          "Collections",
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OwnerProfileScreen()));
              },
              child: Container(
                width: 160.w,
                height: 120.h,
                margin: EdgeInsets.only(left: 10.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.grey.shade200, width: 1.w)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 160.w,
                        height: 61.h,
                        child: Image.asset("assets/images/profile.png")),
                    Text(
                      "Owner Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 310.w,
                  height: 50.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff0F67B1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextLable.appText("Verify Ticket",
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ));
  }
}
