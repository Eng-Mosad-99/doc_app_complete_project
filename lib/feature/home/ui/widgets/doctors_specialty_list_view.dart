import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  const DoctorsSpecialtyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 8,
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(
              start: index ==0 ? 0 : 24.w,
            ) ,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    'assets/icons/general_speciality.svg',
                 width: 40.w,
                 height: 40.h,
                  ),),
                verticalSpace(8),
                Text(
                  'Cardiologist',
                  style: Styles.font12DarkBlueRegular,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}