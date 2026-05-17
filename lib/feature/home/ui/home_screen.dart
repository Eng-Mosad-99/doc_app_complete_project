import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctors_blue_containers.dart';
import 'widgets/doctors_speciality_see_all.dart';
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
         verticalSpace(16),
         const DoctorsBlueContainers(),
         verticalSpace(16),
        const DoctorsSpecialtySeeAll(),
        ],
       ),
     ),),
    );
  }
}