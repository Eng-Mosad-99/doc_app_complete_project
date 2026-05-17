import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(child: Container(
      
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         const HomeTopBar(),
        ],
       ),
     ),),
    );
  }
}