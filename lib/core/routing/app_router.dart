import 'package:doc_point/core/di/dependency_injection.dart';
import 'package:doc_point/core/routing/routes.dart';
import 'package:doc_point/features/home/ui/views/home_screen.dart';
import 'package:doc_point/features/login/logic/logi_cubit/login_cubit.dart';
import 'package:doc_point/features/login/ui/views/login_screen.dart';
import 'package:doc_point/features/onBoarding/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
