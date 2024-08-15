
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Authenticationscreen extends StatelessWidget {
   Authenticationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
            Positioned(
             top: 0,
             left: 0,
             right: 0,
            child: Image.asset("assets/Head.png")),
            Positioned(top: 257.w,left: 24.w,right: 24.w,
            child: Container(width: 327.w,height: 305.w,
            padding: EdgeInsets.only(left: 5.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,border: Border.all(color: Colors.black12,width: 0.3)),
            child:Column(
              children: [
                SizedBox(height: 25.h,),
                Row(
                  children: [
                    Container(width: 100.w,height: 1.h,color: Color(0xffEDF1F3),
                    margin: EdgeInsets.only(left: 11,right: 10),),
                    Text('login Now',style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6C7278)),),
                      Container(width: 100,height: 1,color: Color(0xffEDF1F3),margin: EdgeInsets.only(left: 10,right: 11)),
                  ],
                ),
                 SizedBox(height: 25.h,),
               SizedBox(
                width: 276.w,
                height: 46.h,
                
                 child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Loisbecket@gmail.com",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.grey.shade300,width: 1)),
                  ),
                  ),
               ),
                SizedBox(height: 25,),
                 SizedBox(
                  width: 276.w,
                  height: 46.h,
                   child: TextFormField(
                                   keyboardType: TextInputType.visiblePassword,
                                   decoration: InputDecoration(
                    labelText: "*********",
                    suffixIcon: Icon(Icons.visibility_off_outlined,color:Colors.grey.shade300 ,),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.grey.shade300,width: 1)),
                             ),
                                   ),
                 ),
                 SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(width: 12.w,height: 12.h,margin: EdgeInsets.only(left: 27.w,right: 3.w,),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400,width: 1)),),
                    SizedBox(width: 3.w,),
                    Text("Remember me",style: GoogleFonts.inter(fontWeight:FontWeight.w500,fontSize: 12 ),),
                      SizedBox(width: 65.w,),
                     Text("Forgot Password?",style: GoogleFonts.inter(fontWeight:FontWeight.w500,fontSize: 12,color: Color(0xff0F67B1) ),)
                  ],
                ),
                    SizedBox(height: 20.h,),
                    
                  Container(width: 279.w,height: 48.h,margin: EdgeInsets.only(left: 16,right: 16,),
                  alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xff0F67B1)),
                    child: Text("Log In",style: GoogleFonts.inter(fontWeight:FontWeight.w500,fontSize: 14.sp,color: Colors.white ),),
                     
                    
                    ),
               
              ],
            )
            ),
            ),
            Positioned(
              bottom: 5.h,
              left: 114.w,
              right: 114.w,
              
              child: Container(width: 148.w,height: 5.h,decoration: BoxDecoration(color: Color(0xff111827),borderRadius: BorderRadius.circular(5)),))
          ],
        ),
    );
      
       
       
                
    
  
  }
}