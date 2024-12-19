import 'package:buspay_conductor/Screens/AuthenticationScreen/controller.dart';
import 'package:buspay_conductor/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class Authenticationscreen extends StatefulWidget {
  Authenticationscreen({super.key });
  
  @override
  State<Authenticationscreen> createState() => _AuthenticationscreenState();
}
//  AuthenticationController authctrl = Get.put(AuthenticationController()) ;
class _AuthenticationscreenState extends State<Authenticationscreen> {
  bool _remember=false;
  bool _obscureText=true;
  bool _toggle = true;
  @override
  void initState() {
  super.initState();
  Get.put(AuthenticationController());
}
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AuthenticationController>(builder: (authctrl){
                 return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/images/loginbg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 75.h,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset("assets/images/appicon.png"),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Sign in to your \n Account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Enter your email and password to login',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                          color: Colors.white),
                    ),
                  ],
                )),
            Positioned(
              top: 257.w,
              left: 24.w,
              right: 24.w,
              child: Container(
                  width: 327.w,
                  height: 327.w,
                  padding: EdgeInsets.only(left: 5.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.3)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            height: 1.h,
                            color: Color(0xffEDF1F3),
                            margin: EdgeInsets.only(left: 25.w, right: 10),
                          ),
                          Text(
                            'login Now',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff6C7278)),
                          ),
                          Container(
                              width: 100,
                              height: 1,
                              color: Color(0xffEDF1F3),
                              margin: EdgeInsets.only(left: 10, right: 11)),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      SizedBox(
                        width: 276.w,
                        height: 46.h,
                        child: TextFormField(
                          controller: authctrl.emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            //  labelText: "email",
                            isDense: true,
                            hintText: "john@email.com",
                              hintStyle: GoogleFonts.inter(fontSize: 12.sp,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade300, width: 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 276.w,
                        height: 50.h,
                        child: TextFormField(
                          controller: authctrl.passwordController,
                          obscureText: _obscureText,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            // labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            hintText: "Password",
                            hintStyle: GoogleFonts.inter(fontSize: 12.sp,fontWeight: FontWeight.w400),
                            isDense: true,
                            suffixIcon: GestureDetector(
                              onTap:(){
                                     setState(() {
                                       _obscureText=!_obscureText;
                                     });
                              },
              
                              child: Icon(_obscureText?
                                Icons.visibility_off_outlined:Icons.visibility_outlined,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade300, width: 1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                Checkbox(value: _remember, onChanged: (bool? value){
                  setState(() {
                    _remember = value!;
                  });
                },
                activeColor: Color(0xFF0F67B1),
                checkColor: Colors.white,
                ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "Remember me",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          SizedBox(
                            width: 41.w,
                          ),
                          Text(
                            "Forgot Password?",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff0F67B1)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      InkWell(
                        onTap: () {
                         if(authctrl.emailController.text.isEmpty ){
                          Fluttertoast.showToast(msg: "Please enter a valid credentials");
                         }
                         else if (authctrl.passwordController.text.isEmpty ){
                          Fluttertoast.showToast(msg: "Please enter a valid credentials");
                         }
                         else{
                          authctrl.loginSend();
                         }
                        },
                        child: 
                        Container(
                          width: 279.w,
                          height: 48.h,
                          margin: EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff0F67B1)),
                          child: Text(
                            "Log In",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.white),
                          ),
                        ),
                       ),
                        
                    ],
                  )),
            ),
            
          ],
        );}
                ),
    ),);
  }
}
