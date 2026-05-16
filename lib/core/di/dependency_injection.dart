import 'package:dio/dio.dart';
import 'package:doc_app_complete_project/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app_complete_project/feature/signup/data/repo/signup_repo.dart';
import 'package:doc_app_complete_project/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../feature/login/data/repo/login_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
