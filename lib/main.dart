import 'package:doc_app_complete_project/core/di/dependency_injection.dart';
import 'package:doc_app_complete_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/helper/bloc_observer.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(DocApp(appRouter: AppRouter()));
}
