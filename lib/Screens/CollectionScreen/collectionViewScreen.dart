import 'package:buspay_conductor/Screens/CollectionScreen/CollectionCard.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(preferredSize: Size.fromHeight(70.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading:  SizedBox(
        width: 9.5,
        height: 9.5,
        child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
      
      title:TextLable.appText("Collection",size: 21.sp,fontWeight: FontWeight.w600,color: Colors.white,)
     )),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 172.h,
              width: 358.w,
              margin:  EdgeInsets.only(left: 17, right: 17, top: 14),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(15, 103, 177, 0.9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -18.w,
                    left: -28.h,
                    child: Image.asset(
                      'assets/images/bgcircle.png',
                      height: 140.h,
                      width: 177.w,fit: BoxFit.scaleDown,
                    ),
                  ),
                  Positioned(
                    top: 30.w,
                    left: 20.7.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLable.appText("Amount Earned",size: 13.sp,fontWeight: FontWeight.w500,color: Colors.white,fontFamily: "lato")
                        ,
                       TextLable.appText("2,48,259.00",size: 24.sp,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: "lato")
                        ,SizedBox(height: 23),
                          TextLable.appText("Total Tickets",size: 13.sp,fontWeight: FontWeight.w500,color: Colors.white,fontFamily: "lato")
                    
                         ,TextLable.appText("100",size: 19.sp,fontWeight: FontWeight.w800,color: Colors.white,fontFamily: "lato")
                        ,
                      ],
                    ),
                  ),

                  // Pie Chart
                  Positioned(
                    right: 10.w,
                    top: 10.h,
                    child: SizedBox(
                      height: 154.h,
                      width: 154.w,
                      child: Stack(
                        children: [
                          // bg white crcl
                          Center(
                            child: Container(
                              height: 154.w,
                              width: 154.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          // Pie Chart
                          PieChart(
                            PieChartData(
                              sections: [
                                PieChartSectionData(
                                  value: 70,
                                  color: Color.fromRGBO(74, 222, 195, 1),
                                  radius: 20.r, 
                                  showTitle: false, 
                                ),
                                PieChartSectionData(
                                  value: 30,
                                  color: Color.fromRGBO(246, 198, 26, 1),
                                  radius: 20.r, 
                                  showTitle: false, 
                                ),
                              ],
                              startDegreeOffset: -90, 
                              sectionsSpace: 2, // white space btwen sections
                              centerSpaceRadius: 45, // White circle  cntr
                            ),
                          ),
                       // text inside whitr cntr
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              TextLable.appText("Collection",size: 16.sp,fontWeight: FontWeight.w700,fontFamily: "lato",color: Colors.black)
                        , TextLable.appText("Today-Total",size: 10.sp,fontWeight: FontWeight.w600,fontFamily: "lato",color: Colors.black)
                        ,
                              
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:14 ,),
           
SizedBox(height:20.h ,),
// date chose row


    
          SizedBox(height:5),
          Collectioncard(title: "Sinthumol", subtitle: "(Haripad - Alappuzha)", hashvalue: "#122343", collectvalue: "2,100.88", percent: "54%")

        ],
      

        
      ),
    ),
  );
}     
}




