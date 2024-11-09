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
       appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      title: Text("Collection",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
     )),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 172,
              width: 358,
              margin: const EdgeInsets.only(left: 17, right: 17, top: 14),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(15, 103, 177, 0.9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -18,
                    left: -28,
                    child: Image.asset(
                      'assets/images/bgcircle.png',fit:BoxFit.contain ,
                      height: 140.h,
                      width: 177.w,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amount Earned',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Lato",
                          ),
                        ),
                        Text(
                          '2,48,259.00',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 23),
                        Text(
                          'Total Tickets',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Pie Chart
                  Positioned(
                    right: 10,
                    top: 10,
                    child: SizedBox(
                      height: 154,
                      width: 154,
                      child: Stack(
                        children: [
                          // bg white crcl
                          Center(
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          // Pie Chart
                          PieChart(
                            PieChartData(
                              sections: [
                                PieChartSectionData(
                                  value: 70,
                                  color: Color.fromRGBO(74, 222, 195, 1),
                                  radius: 20, 
                                  showTitle: false, 
                                ),
                                PieChartSectionData(
                                  value: 30,
                                  color: Color.fromRGBO(246, 198, 26, 1),
                                  radius: 20, 
                                  showTitle: false, 
                                ),
                              ],
                              startDegreeOffset: -90, 
                              sectionsSpace: 2, // white space btwen sections
                              centerSpaceRadius: 45, // White circle  cntr
                            ),
                          ),
                       // text inside whitr cntr
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Collection',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: "Lato"
                                  ),
                                ),
                                Text(
                                  'Today-Total',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:14 ,),
//             Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
   
//     ElevatedButton(
//       onPressed: () {  _showSettlePaymentsBottomSheet(context);},
//       style: ElevatedButton.styleFrom(
//         backgroundColor: const Color.fromRGBO(15, 103, 177, 1),
//         padding: EdgeInsets.symmetric(vertical: 12, horizontal:12),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       child: Text(
//         'Settle Payments',
//         style: TextStyle(
//           fontSize: 16,
//           color: Colors.white,
//           fontWeight: FontWeight.w500,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ),
//     SizedBox(width: 15,),
//     ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         backgroundColor: const Color.fromRGBO(15, 103, 177, 1),
//         padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       child: Text(
//         'View Request',
//          style: TextStyle(
//           fontSize: 16,
//           color: Colors.white,
//           fontWeight: FontWeight.w500,
//           fontFamily: "Poppins",
//         ),
//       ),
//     ),
//   ],
// ),
SizedBox(height:10.h ,),
// date chose row


              

               //status row(total)
     
         
          ExpandableCard(),
           SizedBox(height:8.h),
           ExpandableCard(),

        ],
      

        
      ),
    ),
  );
}     
}





// class ExpandableCard extends StatefulWidget {
//   const ExpandableCard({Key? key}) : super(key: key);

//   @override
//   _ExpandableCardState createState() => _ExpandableCardState();
// }

// class _ExpandableCardState extends State<ExpandableCard> {
//   bool _isExpanded = false;

//   void _toggleExpand() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _toggleExpand,
//       child: Container(
//         width: 366,
//         height: _isExpanded ? 210 : 120,
//         margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
      
//             Padding(
//               padding: const EdgeInsets.only(left:16,right:16,top:12),
//               child: Row(
//                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Sinthumol',
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black,
//                       fontFamily: "Lato",
//                     ),
//                   ),
//                   Text(
//                     '(Haripad - Alappuzha)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black,
//                       fontFamily: "Lato",
//                     ),
//                   ),
//                   SizedBox(width:140),
//                   Container(
//                     height:22,
//                     width:22,
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color.fromRGBO(217,217,217,1)),
//                     child: Icon(
//                       _isExpanded
//                           ? Icons.keyboard_arrow_down
//                           : Icons.keyboard_arrow_right_outlined,
                
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height:10),
//             Container(
//               height:1,
//               width:333,
//               margin: EdgeInsets.only(left:16,right:16,top:0),
//               child: Divider(color: Color.fromRGBO(226,226,226,1)),
                        
//             ),

         
            
//             Padding(
//               padding: const EdgeInsets.only(left:16.0,right:16,top:10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('2100.88', style: TextStyle(fontSize: 18,fontFamily: "Lato",fontWeight:FontWeight.w700,color: Colors.black )),
//                   Text('54%', style: TextStyle(fontSize: 18,fontFamily: "Lato",fontWeight:FontWeight.w800,color: Color.fromRGBO(74,160,222,1))),
//                 ],
//               ),
//             ),
//               SizedBox(height: 5,),
//                Container(
//                 height:7,
//                 width:333,
//                 decoration: BoxDecoration(borderRadius:BorderRadius.only(
//                        topLeft: Radius.circular(10),
//                     bottomLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                     bottomRight: Radius.circular(10),
//                   ),),
//                  child: LinearProgressIndicator(
//                   value: 0.54,
//                   backgroundColor: Colors.grey[400],
//                   color: Color.fromRGBO(74,160,222,1),
//                                ),
//                ),
           
//             if (_isExpanded) ...[
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text('Reema Shareen', style: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight:FontWeight.w600,color: Colors.black )),
//                       SizedBox(width:212),
//                       Text('20', style: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight:FontWeight.w600,color: Colors.black )),
//                     ],
//                   ),
//                  // SizedBox(height: 5),
//                   Row(
                  
//                     children: [
//                        Text('Conductor Incharge', style: TextStyle(fontSize: 10,fontFamily: "Lato",fontWeight:FontWeight.w400,color: Colors.black )),
//                        SizedBox(width:158),
//                        Text('Total Ticket Sold', style: TextStyle(fontSize: 10,fontFamily: "Lato",fontWeight:FontWeight.w400,color: Colors.black )),
                      
                      
//                     ],
//                   ),
//                     SizedBox(height: 10),
//                     Row(
//                     children: [
//                       Text('12-10-2024', style: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight:FontWeight.w600,color: Colors.black )),
//                       SizedBox(width:190),
//                       Text('12:30 Pm', style: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight:FontWeight.w600,color: Colors.black )),
//                     ],
//                     ),
//                          Row(
                  
//                     children: [
//                        Text('Date and Time', style: TextStyle(fontSize: 10,fontFamily: "Lato",fontWeight:FontWeight.w400,color: Colors.black )),
//                        SizedBox(width:185),
//                        Text('Completed Time', style: TextStyle(fontSize: 10,fontFamily: "Lato",fontWeight:FontWeight.w400,color: Colors.black )),
                      
                      
//                     ],
//                   ),
               
//                 ],
//               ),
//             ),
//           ],
//         ],
//       ),
//     ),
//   );
//   }
// }
// //    void  _showSettlePaymentsBottomSheet(BuildContext context) {
// //     showModalBottomSheet(
// //       context: context,
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.all(
// //         Radius.circular(40),
// //         ),
// //       ),
// //       builder: (context) {
// //         return Container(
// //           height: 280.h,
// //           padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
// //           decoration: BoxDecoration(
// //             color: Colors.white,
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.black.withOpacity(0.1),
// //                 blurRadius: 6.7,
// //                 offset: Offset(0, -1),
// //               ),
// //             ],
// //             borderRadius: BorderRadius.only(
// //               topLeft: Radius.circular(40),
// //               topRight: Radius.circular(40),
// //             ),
// //           ),
// //           child: Column(
// //             children: [
            
// //               Text(
// //                 "Settle Payment",
// //                 style: TextStyle(
// //                   fontFamily: "Inter",
// //                   fontSize: 16.sp,
// //                   fontWeight: FontWeight.w500,
// //                   color: Color.fromRGBO(9,10,10,1)
// //                 ),
// //               ),
// //                 Container(
// //                 width: 97.w,
// //                 height: 1.h,
// //                 margin: EdgeInsets.only(bottom: 23.h),
// //                 decoration: BoxDecoration(
// //                   border: Border.all(color: Colors.black.withOpacity(0.1)),
// //                 ),
// //               ),
// //              // SizedBox(height: 2.h),
// //               _textfield("Enter Amount", "Enter amount to be transfered"),
            
// //               SizedBox(height: 9.h),
// //               Container(
// //                 width: double.infinity,
// //                 height: 40.h,
// //                 child: ElevatedButton(
// //                   onPressed: () {
// //                      Navigator.push(
// //                    context,
// //                     MaterialPageRoute(
// //                     builder: (context) => CollectionScreen(),
// //                     ),
// //                      );
// //                   },
// //                   child: Text(
// //                     'Settle Now ',
// //                     style: TextStyle(
// //                       fontSize: 16.sp,
// //                       fontWeight: FontWeight.w500,
// //                       fontFamily: "Poppins",
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Color.fromRGBO(15, 103, 177, 1),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(height: 15.h),
// //               GestureDetector(
// //                 onTap: () {
// //                   Navigator.pop(context);
// //                 },
// //                 child: Text(
// //                   "Get Back",
// //                   style: TextStyle(
// //                     fontFamily: "Poppins",
// //                     fontSize: 13.sp,
// //                     fontWeight: FontWeight.w400,
// //                     color: Colors.grey[600],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// // // TextField Widget
// // _textfield(String labelText, String hintText) {
// //   return Column(
// //     crossAxisAlignment: CrossAxisAlignment.start,
// //     children: [
// //       SizedBox(height: 8.h),
// //       Text(
// //         labelText,
// //         style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500),
// //       ),
// //       SizedBox(height: 8.h),
// //       Container(
// //         height: 48.h,
// //         width: 327.w,
// //         decoration: BoxDecoration(
// //           color: Color.fromARGB(255, 222, 222, 222),
// //           borderRadius: BorderRadius.circular(8),
// //         ),
// //         child: TextFormField(
// //           decoration: InputDecoration(
// //             border: InputBorder.none,
// //             contentPadding: EdgeInsets.symmetric(horizontal: 18.w),
// //             hintText: hintText,
// //             hintStyle: GoogleFonts.inter(
// //               color: Colors.grey[600],
// //               fontSize: 14.sp,
// //             ),
// //           ),
// //           style: GoogleFonts.inter(
// //             color: Color.fromRGBO(27, 27, 27, 1),
// //             fontSize: 16.sp,
// //             fontWeight: FontWeight.w400,
// //           ),
// //         ),
// //       ),
// //       SizedBox(height: 10.h),]);
// // }