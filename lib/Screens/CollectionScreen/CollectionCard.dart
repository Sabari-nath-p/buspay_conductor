
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



Widget Collectioncard(
    {required String title,
    required String subtitle,
    required hashvalue,
    required collectvalue,
    required percent,
    TextEditingController? titlecontroller,
    TextEditingController? subtitlecontroller,
     TextEditingController? hashvaluecontroller,
      TextEditingController? collectvaluecontroller,
       TextEditingController? percentcontroller,
  
 
   
  }) {
  return Container(
    width: 366.w,
  height: 105.h,
    margin: EdgeInsets.only(top: 10.h,left: 7.w),
    decoration: BoxDecoration(
        color: Colors.grey.shade100.withOpacity(0.15.w),
        borderRadius: BorderRadius.circular(10.w)
        ,border: Border.all(color: Colors.grey.shade200)
        ),
   
    //     width: 320.w,
 child: Column(
  children: [
     Padding(
              padding: EdgeInsets.only(left:16.w,right:16.w,top:12.h),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    TextLable.appText(title,size: 13.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                        ,
                   TextLable.appText(subtitle,size: 10.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                  
                 ,Expanded(child: Container()),
                 TextLable.appText(hashvalue,size: 13.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                         
                 
                ],
              ),
            ),
             SizedBox(height:5.h),
            Container(
              height:1,
              width:333.w,
              margin: EdgeInsets.only(left:16,right:16),
              child: Divider(color: Color.fromRGBO(226,226,226,1)),
                        
            ),
              Padding(
              padding: const EdgeInsets.only(left:16.0,right:16,top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   TextLable.appText(collectvalue,size: 18.sp,fontWeight: FontWeight.w800,fontFamily: "lato",color: Colors.black)
                  ,  TextLable.appText(percent,size: 18.sp,fontWeight: FontWeight.w800,fontFamily: "lato",color:Color.fromRGBO(74,160,222,1))
                  
     
                ],
              ),
            ),

  ],

 ),);}
    
    
    