import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/core/theming/styles.dart';
import 'package:doc_app_complete_project/core/widgets/app_text_button.dart';
import 'package:doc_app_complete_project/feature/login/data/models/login_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/login_cubit.dart';
import 'widgets/already_have_account.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/terms_and_condition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: <Widget>[
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: Styles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(36),
                    AppTextButton(
                      buttonText: 'Login',
                      onPressed: () {
                        validateThenLogin(context);
                      },
                      buttonTextStyle: Styles.font16WhiteSemiBold,
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    // }
  }
}
