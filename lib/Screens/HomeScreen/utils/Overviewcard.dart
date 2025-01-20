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
      height: 110.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                
                blurRadius: .5,
                color: Colors.black.withOpacity(.23))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/wallet.png",
                width: 24.w,
                height: 24.w,
              ),
              SizedBox(width: 4.w,),
              TextLable.appText(
                   "$title", size: 11.sp, fontWeight: FontWeight.w500),
            ],
          ),
          SizedBox(height:7.h),
          TextLable.appText(
              "$value", size: 14.sp, fontWeight: FontWeight.w500),
          SizedBox(height:2.h),
          TextLable.appText(
               "$description",
              size: 8.sp,
              fontWeight: FontWeight.w300),
        ],
      ),
    );
  }
}
