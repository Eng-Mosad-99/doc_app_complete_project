import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialtySeeAll extends StatelessWidget {
  const DoctorsSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Doctor Speciality',
          style: Styles.font18DarkBlueSemiBold,
        ),
        Spacer(),
        Text(
          'See All',
          style: Styles.font12BlueRegular,
        ),
      ],
    );
  }
}