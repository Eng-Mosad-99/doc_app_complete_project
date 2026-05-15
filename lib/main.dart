import 'package:doc_app_complete_project/core/di/dependency_injection.dart';
import 'package:doc_app_complete_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
