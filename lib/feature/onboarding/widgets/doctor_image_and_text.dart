
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset('assets/icons/docdoc_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Text(
            'Best Doctor\nAppointment App',
            style: Styles.font32BlueBold.copyWith(
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
