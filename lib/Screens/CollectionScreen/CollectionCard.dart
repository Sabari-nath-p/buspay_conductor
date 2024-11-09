import 'package:buspay_conductor/Screens/HomeScreen/utils/ProgressIndication.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({super.key});

  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 366.w,
      height: 115.h,
      padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 10.h),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.w),border: Border.all(width: 1.5.sp,color: Colors.grey.shade300)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextLable.appText("Sinthumol",color: Color(0xff575757),fontWeight: FontWeight.w500,size: 12.sp),SizedBox(width: 6.w,),
           TextLable.appText("(Haripad-Alappuzha)",color: Colors.grey,fontWeight: FontWeight.w500,size: 13.sp),
            
            ],
            
          ),
          SizedBox(height: 7.h,),
          Container(width: 334,
          height: 2.h,
          decoration: BoxDecoration(color: Color(0xffE2E2E2)),),
       SizedBox(height: 7.h,),
       Row(
         children: [
           Text('2,100.88',style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w700),),
      Expanded(child: Container()),
     
       Text('54%',style: GoogleFonts.lato(color: Color(0xff4AA0DE),fontWeight: FontWeight.w800),),
         ],
       ),
         SizedBox(height: 7.h,),
         ProgressindicationScreen(progress: 0.3)
        ],
      ),
    );
  }
}