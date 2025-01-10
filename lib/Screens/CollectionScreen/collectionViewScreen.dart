import 'package:buspay_conductor/Screens/CollectionScreen/CollectionCard.dart';
import 'package:buspay_conductor/Screens/CollectionScreen/CollectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({super.key});

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(preferredSize: Size.fromHeight(80.h), child: AppBar(
      backgroundColor: Color(0xff0F67B1),
      leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
      title: Text("Collection",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),),
     )),
      body: Column(
        children: [
                      Collectioncard(),
                      CollectionScreen(),
        ],
      ),
    );
  }
}