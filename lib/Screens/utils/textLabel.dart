import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextLable {
  static Widget appText(String? text,
      {String fontFamily = 'Inter',
      FontWeight? fontWeight = null,
      double? size = null,
      int? maxLine,
      TextDecoration? decoration,
      Color? color}) {
    return Text(
      text ?? "",
      maxLines: maxLine,
     
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
          decoration: decoration,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  static Widget appTextPoppins(String? text,
      {String fontFamily = 'Inter',
      FontWeight? fontWeight = null,
      double? size = null,
      int? maxLine,
      Color? color}) {
    return Text(
      text ?? "",
      maxLines: maxLine,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
