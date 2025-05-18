import 'package:flutter/material.dart';
import 'package:foodie/app/foodie_app.dart';
import 'package:foodie/core/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( FoodieApp(appRouter: AppRouter(),));
}


