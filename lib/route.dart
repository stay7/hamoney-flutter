import 'package:flutter/material.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import 'package:hamoney/screen/signup_second_screen.dart';

abstract class HamoneyRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget screen;

    switch (settings.name) {
      case LoginScreen.routeName:
        screen = LoginScreen();
        break;
      case SignupFirstScreen.routeName:
        screen = SignupFirstScreen();
        break;
      case SignupSecondScreen.routeName:
        screen = SignupSecondScreen();
        break;
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen);
  }
}
