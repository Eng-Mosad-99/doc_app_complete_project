import 'package:doc_app_complete_project/core/di/dependency_injection.dart';
import 'package:doc_app_complete_project/core/helper/constants.dart';
import 'package:doc_app_complete_project/core/helper/extension.dart';
import 'package:doc_app_complete_project/core/helper/shared_prefs_helper.dart';
import 'package:doc_app_complete_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helper/bloc_observer.dart';
import 'doc_app.dart';

bool isLoggedUser = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken.isNullOrEmpty()) {
    isLoggedUser = false;
  } else {
    isLoggedUser = true;
  }
}
