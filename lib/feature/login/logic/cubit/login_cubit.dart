import 'package:doc_app_complete_project/core/helper/constants.dart';
import 'package:doc_app_complete_project/core/helper/shared_prefs_helper.dart';
import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/core/networking/dio_factory.dart';
import 'package:doc_app_complete_project/feature/login/data/models/login_request_body.dart';
import 'package:doc_app_complete_project/feature/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final LoginRepo loginRepo;

  final TextEditingController emailController = TextEditingController(
    text: 'as14@gmail.com',
  );
  final TextEditingController passwordController = TextEditingController(
    text: 'Mm@123456',
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final result = await loginRepo.login(loginRequestBody);
    result.when(
      success: (data) async {
        await saveUserToken(data.data?.token ?? '');
        emit(LoginState.success(data));
      },
      failure: (error) =>
          emit(LoginState.failure(error: error.apiErrorModel.message ?? '')),
    );
  }

  Future<void> saveUserToken(String token) async {
    // save user token to shared prefs
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
