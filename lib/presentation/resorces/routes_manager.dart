import 'package:flutter/material.dart';
import 'package:tut/presentation/forgot_pass/forgot_pass.dart';
import 'package:tut/presentation/login/login_view.dart';
import 'package:tut/presentation/onbording/onbordinview.dart';
import 'package:tut/presentation/register/register_view.dart';
import 'package:tut/presentation/main/main_view.dart';
import 'package:tut/presentation/resorces/strings_manager.dart';

import '../splash/splash_view.dart';
import '../store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = 'loginRoute';
    static const String onBoarding = 'onBoarding';

  static const String registeRoute = 'registeRoute';
  static const String forgotPasswordRoute = 'forgotPasswordRoute';
  static const String mainRoute = 'mainRoute';
  static const String storDetailsRoute = 'storDetailsRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: ((context) => const SplashView()),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: ((context) => const LoginView()),
        );
         case Routes.onBoarding:
        return MaterialPageRoute(
          builder: ((context) => const OnbordingView()),
        );
      case Routes.registeRoute:
        return MaterialPageRoute(
          builder: ((context) => const RegisterView()),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: ((context) => const ForgotPasswoedView()),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: ((context) => MainView()),
        );
      case Routes.storDetailsRoute:
        return MaterialPageRoute(
          builder: ((context) => StoreDetailsView()),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }
}
