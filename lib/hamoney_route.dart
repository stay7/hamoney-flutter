import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/login/login_bloc.dart';
import 'package:hamoney/bloc/signup/signup_join_bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import 'package:hamoney/screen/signup_second_screen.dart';
import 'package:hamoney/screen/tabs/spending_screen.dart';

import 'bloc/signup/signup_bloc.dart';
import 'bloc/spending/spending_bloc.dart';
import 'bloc/tab/tab_bloc.dart';

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
              create: (context) => SignupBloc(
                authRepository: context.read<AuthRepository>(),
                userRepository: context.read<UserRepository>(),
              ),
            ),
          ],
          child: const LoginScreen(),
        );
        break;
      case SignupScreen.routeName:
        final argument = settings.arguments as SignupScreenArgument;
        screen = BlocProvider(
          create: (context) => SignupBloc(
            authRepository: context.read<AuthRepository>(),
            userRepository: context.read<UserRepository>(),
          ),
          child: SignupScreen(argument.email),
        );
        break;
      case SignupJoinScreen.routeName:
        screen = BlocProvider(
          create: (context) => SignupJoinBloc(
            accountBookRepository: context.read<AccountBookRepository>(),
          ),
          child: SignupJoinScreen(),
        );
        break;
      case MainScreen.routeName:
        screen = BlocProvider<TabBloc>(
          create: (context) => TabBloc(),
          child: const MainScreen(),
        );
        break;
      case SpendingScreen.routeName:
        screen = BlocProvider<SpendingBloc>(
          create: (context) => SpendingBloc(),
          child: SpendingScreen(),
        );
        break;
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen);
  }
}
