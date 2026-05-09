import 'package:doc_app_complete_project/core/routing/app_router.dart';
import 'package:doc_app_complete_project/core/routing/routes.dart';
import 'package:doc_app_complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (_ , child) {
        return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      theme: ThemeData(
        primaryColor: ColorsManager.mainBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
      },
    );
   
  }
}