import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hamoney/bloc/login/login_bloc.dart';
import 'package:hamoney/bloc/signup/signup_join_bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/screen/signup_done_screen.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_amount_bloc.dart';
import 'package:hamoney/screen/spending/add_spending_amount_screen.dart';
import 'package:hamoney/screen/spending/add_spending_category_screen.dart';
import 'package:hamoney/screen/spending/add_spending_payment_screen.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import 'package:hamoney/screen/signup_second_screen.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_category_bloc.dart';
import 'package:hamoney/screen/spending/bloc/add_spending_payment_bloc.dart';
import 'package:hamoney/screen/splash_screen.dart';

import 'bloc/signup/signup_bloc.dart';
import 'bloc/signup/signup_done_bloc.dart';
import 'bloc/tab/tab_bloc.dart';

abstract class HamoneyRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget screen;
    final getIt = GetIt.instance;

    switch (settings.name) {
      case SplashScreen.routeName:
        screen = SplashScreen(
          manageAuthToken: getIt.get(),
          accountBookRepository: getIt.get(),
          findAccountBookMember: getIt.get(),
          selectAccountBookMember: getIt.get(),
        );
        break;
      case LoginScreen.routeName:
        screen = MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(
                authRepository: context.read<AuthRepository>(),
                manageAuthToken: getIt.get(),
                secureStorage: getIt.get()
              ),
            ),
            BlocProvider<SignupBloc>(
              create: (context) => SignupBloc(
                authRepository: context.read<AuthRepository>(),
                userRepository: context.read<UserRepository>(),
                manageAuthToken: getIt.get(),
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
            manageAuthToken: getIt.get(),
          ),
          child: SignupScreen(argument.email),
        );
        break;
      case SignupJoinScreen.routeName:
        screen = BlocProvider(
          create: (context) => SignupJoinBloc(
            accountBookRepository: context.read<AccountBookRepository>(),
            selectAccountBookMember: getIt.get(),
          ),
          child: SignupJoinScreen(),
        );
        break;
      case SignupDoneScreen.routeName:
        screen = BlocProvider(
          create: (context) => SignupDoneBloc(),
          child: SignupDoneScreen(),
        );
        break;
      case MainScreen.routeName:
        screen = BlocProvider<TabBloc>(
          create: (context) => TabBloc(),
          child: const MainScreen(),
        );
        break;
      case AddSpendingAmountScreen.routeName:
        screen = BlocProvider<AddSpendingAmountBloc>(
          create: (context) => AddSpendingAmountBloc(
            dateRepository: context.read<UIRepository>(),
            spendingRepository: context.read<SpendingRepository>(),
          ),
          child: AddSpendingAmountScreen(),
        );
        break;
      case AddSpendingCategoryScreen.routeName:
        screen = BlocProvider<AddSpendingCategoryBloc>(
          create: (context) => AddSpendingCategoryBloc(
            accountBookRepository: context.read<AccountBookRepository>(),
            spendingRepository: context.read<SpendingRepository>(),
          ),
          child: AddSpendingCategoryScreen(),
        );
        break;
      case AddSpendingPaymentScreen.routeName:
        screen = BlocProvider<AddSpendingPaymentBloc>(
          create: (context) => AddSpendingPaymentBloc(
            spendingRepository: context.read<SpendingRepository>(),
            accountBookRepository: context.read<AccountBookRepository>(),
          ),
          child: AddSpendingPaymentScreen(),
        );
        break;
    }
    return MaterialPageRoute(settings: settings, builder: (context) => screen);
  }
}
