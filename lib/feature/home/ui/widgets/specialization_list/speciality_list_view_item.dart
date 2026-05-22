
import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/specialization_response_model.dart';

class SpecialtyListViewItem extends StatelessWidget {
  const SpecialtyListViewItem({
    super.key,
    required this.specializationsData, required this.index, required this.selectedIndex,
  });

  final SpecializationsData? specializationsData;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        start: index ==0 ? 0 : 24.w,
      ) ,
      child: Column(
        children: [
          index == selectedIndex? Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsManager.darkBlue,),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
            radius: 28.r,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              'assets/icons/general_speciality.svg',
           width:index == selectedIndex? 42.w: 40.w,
           height:index == selectedIndex? 42.h: 40.h,
            ),),
          ):
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
            specializationsData?.name ?? 'Speciality',
            style:index == selectedIndex?   Styles.font14DarkBlueBold:Styles.font12DarkBlueRegular ,
          ),
        ],
      ),
    );
  }
}