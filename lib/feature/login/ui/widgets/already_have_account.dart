
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Don\'t have an account? ',
        style: Styles.font13DarkBlueRegular,
        children: <TextSpan>[
          TextSpan(
            text: 'Sign Up',
            style: Styles.font13BlueSemiBold,
          ),
        ],
      )
    );
  }
}