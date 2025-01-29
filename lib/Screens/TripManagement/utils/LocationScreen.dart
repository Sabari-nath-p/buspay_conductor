import 'package:buspay_conductor/Screens/utils/textLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveLocationScreen extends StatelessWidget {
  final List<LocationData> locations = [
    LocationData("Haripad Stand", "11:45 AM", "0 KM", true),
    LocationData("Narakathara", "12:00 PM", "3 KM", true),
    LocationData("KV Jetty", "12:10 PM", "5 KM", true),
    LocationData("Karuvatta TB Junction", "12:25 PM", "8 KM", false),
    LocationData("Kalpakavadi", "12:40 PM", "12 KM", false),
    LocationData("Thottappally", "01:00 PM", "15 KM", false),
    LocationData("Ambalappuzha", "", "", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLable.appTextPoppins("Live Location",size:22.sp,fontWeight: FontWeight.w600 ),
             SizedBox(height: 5.h,),
          Expanded(
            child: ListView.builder(
              
              itemCount: locations.length,
              itemBuilder: (context, index) {
                final location = locations[index];
                return LocationTile(
                  title: location.title,
                  time: location.time,
                  distance: location.distance,
                  isActive: location.isActive,
                  isLast: index == locations.length - 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LocationTile extends StatelessWidget {
  final String title;
  final String time;
  final String distance;
  final bool isActive;
  final bool isLast;

  const LocationTile({
    required this.title,
    required this.time,
    required this.distance,
    required this.isActive,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? Colors.blue : Colors.grey,
              ),
            ),
            if (!isLast)
              Container(
                width: 2.w,
                height: 49.h,
                color: isActive ? Colors.blue : Colors.grey,
              ),
          ],
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLable.appTextPoppins(
                title,
                 size: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: isActive ? Colors.black : Colors.grey,
                
              ),
              if (time.isNotEmpty && distance.isNotEmpty)
                TextLable.appTextPoppins(
                  "$time, $distance",
                   fontWeight: FontWeight.w400,
                   size: 12.sp,
                    color: isActive ? Colors.black : Colors.grey,
                
                ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ],
    );
  }
}

class LocationData {
  final String title;
  final String time;
  final String distance;
  final bool isActive;

  LocationData(this.title, this.time, this.distance, this.isActive);
}

