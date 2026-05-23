import 'package:doc_app_complete_project/core/networking/api_error_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error_handler.dart';
part 'api_result.freezed.dart';
@Freezed()
abstract class ApiResult<T> with _$ApiResult<T>{
    const factory ApiResult.success (T data) = Success<T>;
    const factory ApiResult.failure (ApiErrorModel error) = Failure<T>;
}