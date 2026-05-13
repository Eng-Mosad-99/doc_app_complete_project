import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/core/theming/colors.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:doc_app_complete_project/core/widgets/app_text_button.dart';
import 'package:doc_app_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Welcome Back', style: Styles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: InkWell(
                          onTap: () =>
                              setState(() => isObscureText = !isObscureText),
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: isObscureText
                                ? ColorsManager.grey
                                : Colors.black,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                 Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('Forgot Password?', style: Styles.font13BlueRegular,)),
                      verticalSpace(36),
                      AppTextButton(
                        buttonText: 'Login',
                        onPressed: () {
                          
                        },
                        buttonTextStyle: Styles.font16WhiteSemiBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
