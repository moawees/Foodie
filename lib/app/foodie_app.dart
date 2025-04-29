import 'package:flutter/material.dart';
import 'package:foodie/core/router/app_router.dart';
import 'package:foodie/core/router/routes.dart';

// ignore: must_be_immutable
class FoodieApp extends StatelessWidget {
   FoodieApp({super.key, required this.appRouter});
  AppRouter appRouter ;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: Routes.splash,
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,

      

    );
  }
}