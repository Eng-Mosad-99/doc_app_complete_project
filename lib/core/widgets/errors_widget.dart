
import 'package:flutter/material.dart';

import '../theming/styles.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: Styles.font13GreyRegular.copyWith(color: Colors.red),
      ),
    );
  }
}
