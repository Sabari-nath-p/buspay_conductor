import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



Widget InputTextField(
    {required String title,
    TextEditingController? controller,
    String hint = "",
    TextInputType? keyType,
    Widget? suffixIcon,
    bool isHide = false}) {
  return Container(
    width: 360.w,
    height: 85.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLable.appText(title,
            size: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
        Container(
          margin: EdgeInsets.only(top: 7.h),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.only(left: 8),
          //     width: 320.w,

          height: 50.h,
          child: TextFormField(
            maxLines: 1,
            controller: controller,
            obscureText: isHide,
            keyboardType: keyType,
            decoration: InputDecoration(
                hintText: hint,
                suffixIcon: suffixIcon,
                hintStyle: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
                border: InputBorder.none),
          ),
        ),
      ],
    ),
  );
}

 