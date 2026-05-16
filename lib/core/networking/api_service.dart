import 'package:dio/dio.dart';
import 'package:doc_app_complete_project/feature/signup/data/models/signup_request_body.dart';
import 'package:doc_app_complete_project/feature/signup/data/models/signup_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../feature/login/data/models/login_request_body.dart';
import '../../feature/login/data/models/login_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.signup)
  Future<SignupResponse> signUp(@Body() SignupRequestBody signupRequestBody);
}
