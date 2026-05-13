import 'package:doc_app_complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    required this.buttonText,
    required this.buttonTextStyle,
    this.onPressed,
  });
  final double? borderRadius,
      horizontalPadding,
      verticalPadding,
      buttonWidth,
      buttonHeight;
  final Color? backgroundColor;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius ?? 16.r),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 52.h),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.w,
            vertical: verticalPadding ?? 14.h,
          ),
        ),
      ),
      child: Center(child: Text(buttonText, style: buttonTextStyle,)),
    );
  }
}
