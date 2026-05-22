import 'package:dio/dio.dart';
import 'package:doc_app_complete_project/core/helper/constants.dart';
import 'package:doc_app_complete_project/core/helper/shared_prefs_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      appDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void appDioHeaders() async {
    String token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  static void setTokenAfterLogin(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }
}
