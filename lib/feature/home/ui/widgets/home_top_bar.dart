import 'package:doc_app_complete_project/core/theming/colors.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Hi, Omar!',style: Styles.font18DarkBlueBold,),
            Text('How Are you Today?',style: Styles.font12GreyRegular,),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset('assets/icons/notification_logo.svg',)),
      ],
    );
  }
}