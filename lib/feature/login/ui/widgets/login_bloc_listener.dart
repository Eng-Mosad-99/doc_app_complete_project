import 'package:doc_app_complete_project/core/helper/extension.dart';
import 'package:doc_app_complete_project/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading || current is LoginSuccess || current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          loginFailure: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(Icons.error, color: Colors.red, size: 32),
                content: Text(error.getAllErrorMessages(), style: Styles.font15DarkBlueMedium),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('Got it', style: Styles.font14BlueSemiBold),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
