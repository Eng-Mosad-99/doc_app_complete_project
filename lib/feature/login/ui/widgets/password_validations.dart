
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    
    required this.hasSpecialChar,
    required this.hasMinLength,
    required this.hasNumber,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialChar;
  final bool hasMinLength;
  final bool hasNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          'Password should be at least 8 characters',
          hasMinLength,
        ),
        verticalSpace(2),
        buildValidationRow(
          'Password should be at least 1 lowercase',
          hasLowerCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          'Password should be at least 1 uppercase',
          hasUpperCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          'Password should be at least 1 special character',
          hasSpecialChar,
        ),
        verticalSpace(2),
        buildValidationRow('Password should be at least 1 number', hasNumber),
      ],
    );
  }

  Row buildValidationRow(String text, bool isValid) {
    return Row(
      children: <Widget>[
        CircleAvatar(radius: 2.5.r, backgroundColor: ColorsManager.grey),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.font13GreyRegular.copyWith(
            decoration: isValid ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: isValid ? ColorsManager.grey : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
