import 'dart:convert';

import 'package:buspay_conductor/Screens/HomeScreen/HomeScreen.dart';
import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller.dart';


class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}
  bool isloading=false;
class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool _obscureText = true;
  bool _rememberMe = false;

  final AuthenticationController _authController = AuthenticationController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> handleLogin() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      _showSnackBar('Email and password cannot be empty');
      return;
    }
    setState(() {
      isloading =true;
    });

    try {
      final response = await _authController.login(
          emailController.text, passwordController.text);
      if (response['success']) {
        _showSnackBar('Login successful');
        Get.to(() => HomeScreen(), transition: Transition.rightToLeft);
        
      } else {
        _showSnackBar(
            response['error'] ?? 'Login failed. Invalid credentials.');
      }
    } catch (e) {
      _showSnackBar('An error occurred: $e');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(375, 812),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      body: 
      
      
      
      LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 397.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(15, 103, 177, 1),
                      image: DecorationImage(
                        image: AssetImage('assets/images/star.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 75.h,
                          left: (375 / 2).w - 14.w,
                          child: Image.asset(
                            'assets/images/appicon.png',
                            width: 28.w,
                            height: 28.h,
                          ),
                        ),
                        Positioned(
                          top: 120.h,
                          left: 0,
                          right: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextLable.appText(
                                'Sign in to your',
                                  color: Colors.white,
                                  size: 32.sp,
                                   fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                              
                                
                              ),
                              TextLable.appText(
                                'Account',
                                
                                  color: Colors.white,
                                  size: 32.sp,
                                   fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                              
                              ),
                              SizedBox(height: 1.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: TextLable.appText(
                                  "Enter your email and password to log in",
                                 
                                    color: Colors.white,
                                    size: 12.sp,
                                    fontFamily: 'Inter',
                                
                                 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 257.h,
                left: 20.w,
                right: 20.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.h),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                                height: 1.h,
                                color: Color(0xFFEDF1F3),
                              ),
                            ),
                            TextLable.appText(
                              "login Now",
                             
                                color: Color(0xFF6C7278),
                                size: 12.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                               
                              
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                                height: 1.h,
                                color: Color(0xFFEDF1F3),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Container(
                            width: 279.w,
                            height: 46.h,
                            padding: EdgeInsets.only(bottom: 4.h),
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200),borderRadius:BorderRadius.circular(10.w) ),
                            child: 
                           TextFormField(
                         maxLines: 1,
                        controller: emailController,
          
         
            decoration: InputDecoration(
                hintText: "Enter your email",
                 contentPadding: EdgeInsets.only(left: 15.w,bottom: 4.h),
                hintStyle: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
               
                border: InputBorder.none),
          ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Container(
                            width: 279.w,
                            height: 46.h,
                            padding: EdgeInsets.only(bottom: 4.h),
                             decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200),borderRadius:BorderRadius.circular(10.w) ),
                         
                            child: TextField(
                              controller: passwordController,
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                hintText: "Enter your password",
                 contentPadding: EdgeInsets.only(left: 15.w,top: 4.h),
                hintStyle: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
               suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                border: InputBorder.none),
                              
                              
                            
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                       
                        SizedBox(height: 24.h),
                        Center(
                          child: SizedBox(
                            width:279,
                            height:48,
                            child: ElevatedButton(
                              onPressed: handleLogin,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0F67B1),
                                minimumSize: Size(double.infinity, 48.h),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.h,
                                  horizontal: 24.w,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  side: BorderSide(
                                    color: Color(0xFF0F67B1),
                                    width: 1.w,
                                  ),
                                ),
                                elevation: 0,
                              ),
                              child:isloading?LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 12.sp):
                              TextLable.appText(
                                'Login',
                               
                                  color: Colors.white,
                                  size: 16.sp,
                                     fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                              
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
