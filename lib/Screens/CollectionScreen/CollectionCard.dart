import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandableCard extends StatefulWidget {
  const ExpandableCard({Key? key}) : super(key: key);

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  

 

  @override
  Widget build(BuildContext context) {
    return 
      
      Container(
        width: 366.w,
        height: 120.h,
        margin:  EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
                    TextLable.appText("Sinthumol",size: 13.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                        ,
                   TextLable.appText('(Haripad - Alappuzha)',size: 10.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                  
                 ,Expanded(child: Container()),
                 TextLable.appText("#122343",size: 13.sp,fontWeight: FontWeight.w500,fontFamily: "lato",color: Colors.black)
                         
                 
                ],
              ),
            ),
            SizedBox(height:10),
            Container(
              height:1,
              width:333.w,
              margin: EdgeInsets.only(left:16,right:16,top:0),
              child: Divider(color: Color.fromRGBO(226,226,226,1)),
                        
            ),

         
            
            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16,top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   TextLable.appText("2,100.88",size: 18.sp,fontWeight: FontWeight.w800,fontFamily: "lato",color: Colors.black)
                  ,  TextLable.appText("54%",size: 18.sp,fontWeight: FontWeight.w800,fontFamily: "lato",color:Color.fromRGBO(74,160,222,1))
                  
     
                ],
              ),
            ),
              SizedBox(height: 5,),
                    Stack(
                              children: [
                                Row(
                                  children: [
                                    Container(width:15.w ,height: 15.w,
                                    margin: EdgeInsets.only(left: 15.w),
                                                                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30.w)),),
                                 SizedBox(
                                width: 300.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(30.w)),
                                  child: LinearProgressIndicator(
                                    value: 0.6,
                                    backgroundColor: Colors.grey[300],
                                   valueColor: AlwaysStoppedAnimation(Colors.blue) ,
                                    minHeight: 4,
                                  ),
                                ),
                              ), 
                               Container(width:15.w ,height: 15.w,
                                                                    decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(30.w)),),
                  
                                ],  ),
                                 
                              ]
                             
                            ),
           
  
        ],
      ),
    );

  }
}
  

// TextField Widget
