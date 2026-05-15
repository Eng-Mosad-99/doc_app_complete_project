import 'package:dio/dio.dart';
import 'package:doc_app_complete_project/feature/login/logic/cubit/login_cubit.dart';
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
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
