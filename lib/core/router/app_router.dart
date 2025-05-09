import 'package:flutter/material.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/features/splash/ui/splash_screen.dart';
import 'package:foodie/features/splash/cubit/splash_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/login/ui/login_screen.dart';
import 'package:foodie/features/signup/ui/signup_screen.dart';
import 'package:foodie/features/home/ui/home_screen.dart';

class AppRouter {
 Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SplashCubit(),
            child: SplashScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
