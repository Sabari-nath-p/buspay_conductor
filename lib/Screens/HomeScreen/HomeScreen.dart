import 'package:buspay_conductor/Screens/CollectionScreen/CollectionScreen.dart';
import 'package:buspay_conductor/Screens/CollectionScreen/collectionViewScreen.dart';
import 'package:buspay_conductor/Screens/HomeScreen/utils/Overviewcard.dart';
import 'package:buspay_conductor/Screens/HomeScreen/utils/ProgressIndication.dart';
import 'package:buspay_conductor/Screens/ProfileScreen/ProfileviewScreen.dart';
import 'package:buspay_conductor/Screens/TripManagement/utils/NotripScreen.dart';
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
              leading: Container(),
              backgroundColor: Color(0xff0F67B1),
            
              title: Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: TextLable.appTextPoppins("Bus Pay",color: Colors.white,fontWeight: FontWeight.w600,size: 21.sp),
              )
            )),
        body: Padding(
          padding: EdgeInsets.only(left:25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: 20.h,
              ),
               TextLable.appText(
                             "Overview",
                             color: Colors.black,
                            size: 14.sp,
                            fontWeight: FontWeight.w500),
              SizedBox(
                height: 10.h,
              ),
               Row(
                       // mainAxisAlignment: MainAxisAlignment.cen,
                        children: [
                          DBOverviewCard(
                            title: "Wallet \nBalance",
                            value: "₹ 12,034",
                            description: "Amount in account",
                          ),
                          SizedBox(width: 8.w,),
                          DBOverviewCard(
                            title: "Total \nEarnings",
                            value: "₹ 12,034",
                            description: "in past last month",
                          ),
                          SizedBox(width: 8.w,),
                          DBOverviewCard(
                            title: "Ticket \nSold",
                            value: "453",
                            description: "in past last month",
                          ),
                        ],
                      ),
          
            
              SizedBox(
                height: 25.h,
              ),
              Text(
                "C Control",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotripScreen()));
                    },
                    child: Container(
                      width: 162.w,
                      height: 116.h,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey.shade100, width: 1.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 105.w,
                              height: 81.h,
                              child: Image.asset("assets/images/bus.png")),
                            SizedBox(height: 5.h,),
                          TextLable.appTextPoppins(
                            "Trip Manager",
                        
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
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
                      width: 162.w,
                      height: 116.h,
                       alignment: Alignment.topCenter,
                      //margin: EdgeInsets.only(left: 10.w),
                      
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey.shade100, width: 1.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 105.w,
                              height: 81.h,
                              child: Image.asset("assets/images/coin.png")),
                          TextLable.appTextPoppins(
                            "Collections",
                        
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
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
                  width: 162.w,
                  height: 116.h,
                 
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade100, width: 1.w)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 105.w,
                          height: 81.h,
                          child: Image.asset("assets/images/profile.png")),
                       TextLable.appTextPoppins(
                            "Owner Profile",
                        
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                          )
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                  margin: EdgeInsets.only(left:15.w ),
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
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ));
  }
}
