import 'package:doc_app_complete_project/core/theming/colors.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.focusedBorder, this.enabledBorder, this.hintStyle, this.inputTextStyle,required this.hintText, this.isObscureText, this.suffixIcon, this.contentPadding, this.backgroundColor});
final InputBorder? focusedBorder , enabledBorder;
final EdgeInsetsGeometry? contentPadding;
final TextStyle? hintStyle , inputTextStyle;
final String hintText;
final bool? isObscureText;
final Widget? suffixIcon;
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor:backgroundColor ??  ColorsManager.moreLightGrey,
        filled: true,
        isDense: true,
        contentPadding:contentPadding??  EdgeInsets.symmetric(horizontal: 20.w,vertical: 18.h),
       focusedBorder:focusedBorder ?? OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.mainBlue,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(16.r),
       ),
       enabledBorder:enabledBorder ?? OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManager.lighterGrey,
          width: 1.3,
        ),
        
        borderRadius: BorderRadius.circular(16.r),
        
       ),
       hintStyle:hintStyle ?? Styles.font14LightGreyRegular,
       hintText: hintText,
      suffixIcon: suffixIcon, 
      ),
      obscureText:isObscureText ?? false,
      
      obscuringCharacter: '*',
      style:inputTextStyle ?? Styles.font14DarkBlueMedium,
    );
  }
}