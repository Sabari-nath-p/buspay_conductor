import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressindicationScreen extends StatelessWidget {
  final double progress;
  const ProgressindicationScreen({super.key,required this.progress});
  
  @override
  Widget build(BuildContext context) {
    return 
    Stack(
            children: [
      
      Container(
         height: 11.h,
        width: 300.w, // Length of the progress bar
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),border: Border(top: BorderSide(color: Colors.white,width: 5))
        ),
      ),
       Positioned(
        left: 5.w,
        top: 5.h,
         child: Container(
              height: 5.h,
              width: 300 * progress.w, // Dynamic width based on progress
              decoration: BoxDecoration(
               color: Color(0xff0F67B1),
               borderRadius: BorderRadius.circular(5),
              ),
            ),
       ),
          Container(
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xff0F67B1)),
          ),
        Positioned(
          left: 300 * progress.w, // Ensure it's placed at the end (300 is the total width of the line, minus the circle radius)
          child: CircleAvatar(
            radius: 7.5.w,
            backgroundColor: Color(0xff0F67B1),
          ),),
        ],
          );
    
    
  }
}
     