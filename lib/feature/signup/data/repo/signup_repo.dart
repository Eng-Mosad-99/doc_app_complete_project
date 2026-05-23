import 'package:doc_app_complete_project/core/networking/api_error_handler.dart';
import 'package:doc_app_complete_project/core/networking/api_result.dart';
import 'package:doc_app_complete_project/core/networking/api_service.dart';
import 'package:flutter/foundation.dart';

import '../models/signup_request_body.dart';
import '../models/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
