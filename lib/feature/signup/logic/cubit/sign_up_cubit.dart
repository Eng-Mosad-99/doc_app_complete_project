import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/feature/signup/data/models/signup_request_body.dart';
import 'package:doc_app_complete_project/feature/signup/data/repo/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._repo) : super(SignUpState.initial());

  final SignupRepo _repo;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  signUp() async {
    emit(SignUpState.signupLoading());
    final result = await _repo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: 0,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
      ),
    );
    result.when(
      success: (data) => emit(SignUpState.signupSuccess(data)),
      failure: (error) =>
          emit(SignUpState.signupFailure( error)),
    );
  }
}
