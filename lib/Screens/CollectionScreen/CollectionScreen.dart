import 'package:buspay_conductor/Screens/CollectionScreen/CollectionCard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:  Container(
        width: 366,
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
      
            Padding(
              padding: const EdgeInsets.only(left:16,right:16,top:12),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sinthumol',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "Lato",
                    ),
                  ),
                  Text(
                    '(Haripad - Alappuzha)',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: "Lato",
                    ),
                  ),
                  SizedBox(width:140),
                
            SizedBox(height:10),
            Container(
              height:1,
              width:333,
              margin: EdgeInsets.only(left:16,right:16,top:0),
              child: Divider(color: Color.fromRGBO(226,226,226,1)),
                        
            ),

         
            
            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16,top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('2100.88', style: TextStyle(fontSize: 18,fontFamily: "Lato",fontWeight:FontWeight.w700,color: Colors.black )),
                  Text('54%', style: TextStyle(fontSize: 18,fontFamily: "Lato",fontWeight:FontWeight.w800,color: Color.fromRGBO(74,160,222,1))),
                ],
              ),
            ),
              SizedBox(height: 5,),
               Container(
                height:7,
                width:333,
                decoration: BoxDecoration(borderRadius:BorderRadius.only(
                       topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),),
                 child: LinearProgressIndicator(
                  value: 0.54,
                  backgroundColor: Colors.grey[400],
                  color: Color.fromRGBO(74,160,222,1),
                               ),
               ),
                ],
          
                  ),
                 // SizedBox(height: 5),
               
                        
               
                
              ),
          ],  ),
          
       ),
      ),
    );}
//            
        
      
    
}