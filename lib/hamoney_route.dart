import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/login/login_bloc.dart';
import 'package:hamoney/repository/signup_repository.dart';
import 'package:hamoney/screen/home_screen.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import 'package:hamoney/screen/signup_second_screen.dart';

import 'bloc/signup/signup_bloc.dart';

abstract class HamoneyRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget screen;

    switch (settings.name) {
      case LoginScreen.routeName:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(authRepository: context.read<AuthRepository>()),
            ),
            BlocProvider<SignupBloc>(
              create: (context) => SignupBloc(authRepository: context.read<AuthRepository>()),
            ),
          ],
          child: const LoginScreen(),
        );
        break;
      case SignupScreen.routeName:
        final argument = settings.arguments as SignupScreenArgument;
        screen = BlocProvider(
          create: (context) => SignupBloc(authRepository: context.read<AuthRepository>()),
          child: SignupScreen(argument.email),
        );
        break;
      case SignupJoinScreen.routeName:
        screen = SignupJoinScreen();
        break;
      case HomeScreen.routeName:
        screen = HomeScreen();
        break;
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen);
  }
}
