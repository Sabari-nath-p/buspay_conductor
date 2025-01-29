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

   Widget buildDropdown(
      {required String labelText,
      required String hintText,
      var value,
      required List items,
      required Function(dynamic) onChanged,
      String fieldName = "",
      String keyId = ""}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 8.h),
        Text(
          labelText,
          style:
              GoogleFonts.inter( fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      SizedBox(height: 8.h),
      Container(
          height: 48.h,
          width: 360.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 222, 222, 222),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color.fromRGBO(242, 244, 245, 1)),
          ),
          child: DropdownButtonFormField<dynamic>(
            value: value,
            decoration: InputDecoration(
              isCollapsed: true,
              isDense: true,
              contentPadding: EdgeInsets.only(left: 18.w,bottom: 2.h),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.inter(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem(
                value: (keyId == "") ? item : item[keyId],
                child: Text(
                  (fieldName == "") ? item : item[fieldName],
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),],);}