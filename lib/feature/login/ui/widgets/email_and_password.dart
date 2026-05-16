import 'package:doc_app_complete_project/core/helper/spacing.dart';
import 'package:doc_app_complete_project/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController _passwordController;
bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    _passwordController = context.read<LoginCubit>().passwordController;
    _passwordController.addListener(() => setState(() {
    hasLowerCase = AppRegex.hasLowerCase(_passwordController.text);
    hasUpperCase = AppRegex.hasUpperCase(_passwordController.text);
    hasNumber = AppRegex.hasNumber(_passwordController.text);
    hasSpecialChar = AppRegex.hasSpecialCharacter(_passwordController.text);
    hasMinLength = AppRegex.hasMinLength(_passwordController.text);
    }));
  }
@override
Widget build(BuildContext context) {
  return Form(
    key: context.read<LoginCubit>().formKey,
    child: Column(
      children: <Widget>[
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
          controller: context.read<LoginCubit>().emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: 'Password',
          controller: _passwordController,
          isObscureText: isObscureText,
          suffixIcon: InkWell(
            onTap: () => setState(() => isObscureText = !isObscureText),
            child: Icon(
              isObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: isObscureText
                  ? ColorsManager.grey
                  : Colors.black,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
        verticalSpace(24),
        PasswordValidations(
          hasLowerCase: hasLowerCase,
          hasMinLength: hasMinLength,
          hasNumber: hasNumber,
          hasSpecialChar: hasSpecialChar,
          hasUpperCase: hasUpperCase,
        ),
      ],
    ),
  );
}
}