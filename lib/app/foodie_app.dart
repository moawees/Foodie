import 'package:flutter/material.dart';
import 'package:foodie/core/router/app_router.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/utils/color_manager.dart';

// ignore: must_be_immutable
class FoodieApp extends StatelessWidget {
   FoodieApp({super.key, required this.appRouter});
  AppRouter appRouter ;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.offWhite,
        
       
      ),
      initialRoute: Routes.splash,
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,

      

    );
  }
}