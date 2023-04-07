import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/login/bloc/login_bloc.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import 'package:hamoney/screen/signup_second_screen.dart';

abstract class HamoneyRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget screen;

    switch (settings.name) {
      case LoginScreen.routeName:
        screen = BlocProvider(
          create: (context) => LoginBloc(),
          child: const LoginScreen(),
        );
        break;
      case SignupScreen.routeName:
        final argument = settings.arguments as SignupScreenArgument;
        screen = SignupScreen(argument.email);
        break;
      case SignupJoinScreen.routeName:
        screen = SignupJoinScreen();
        break;
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen);
  }
}
