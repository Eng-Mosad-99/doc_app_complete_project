import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/feature/login/data/models/login_request_body.dart';
import 'package:doc_app_complete_project/feature/login/data/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final LoginRepo loginRepo;
  
 void login(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final result = await loginRepo.login(loginRequestBody);
    result.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (error) =>
          emit(LoginState.failure(error: error.apiErrorModel.message ?? '')),
    );
  }
}
