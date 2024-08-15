import 'package:buspay_conductor/Screens/AuthenticationScreen/AuthenticationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const buspay_conductor());
}

class buspay_conductor extends StatelessWidget {
  const buspay_conductor({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder:(context, child) => MaterialApp(
    home: Authenticationscreen() ),
    );
  }
}

