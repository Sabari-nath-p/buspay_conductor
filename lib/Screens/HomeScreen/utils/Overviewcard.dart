import 'package:buspay_conductor/Screens/utils/textLabel.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DBOverviewCard extends StatelessWidget {
  String title, value, description;
  DBOverviewCard(
      {super.key,
      required this.title,
      required this.value,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.w,
      height: 95.h,
      padding: EdgeInsets.only(left:8.w),
     alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           border: Border.all(
                              color: Colors.grey.shade100, width: 1.w)
          
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/wallet.png",
                width: 26.w,
                height: 26.w,
              ),
              SizedBox(width: 4.w,),
              TextLable.appTextPoppins(
                   "$title", size: 10.sp, fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(height:7.h),
          TextLable.appTextPoppins(
              "$value", size: 14.sp, fontWeight: FontWeight.w500),
          SizedBox(height:2.h),
          TextLable.appTextPoppins(
               "$description",
              size: 8.sp,
              fontWeight: FontWeight.w300),
             
        ]
      ),
    );
  }
}
