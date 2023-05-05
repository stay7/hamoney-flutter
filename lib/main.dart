import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/auth_client.dart';
import 'package:hamoney/dio/dioUtil.dart';
import 'package:hamoney/hamoney_route.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:logger/logger.dart';
import './screen/login_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:build_config/build_config.dart'; // 없으면 build.yaml 적용 안됨

import 'bloc/bloc_observer.dart';

Future main() async {
  await dotenv.load(fileName: "config/.env");
  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_NATIVE_APP_KEY']);
  Logger.level = Level.info;
  await initializeDateFormatting();
  Bloc.observer = Observer();
  runApp(const HamoneyApp());
}

class HamoneyApp extends StatelessWidget {
  const HamoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(
            authClient: AuthClient(
              DioUtil().pureDio,
            ),
          ),
        ),
        RepositoryProvider<UserRepository>(create: (context) => UserRepository()),
        RepositoryProvider<AccountBookRepository>(
          create: (context) => AccountBookRepository(
            accountBookClient: AccountBookClient(DioUtil().authorizedDio),
          ),
        )
      ],
      child: MaterialApp(
        title: 'HAMONEY',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        builder: (context, child) => MediaQuery(
          data: MediaQueryData.fromWindow(
            WidgetsBinding.instance.window,
          ).copyWith(
            boldText: false,
            textScaleFactor: 1.0,
          ),
          child: child!,
        ),
        initialRoute: LoginScreen.routeName,
        onGenerateRoute: (settings) => HamoneyRoute.onGenerateRoute(settings),
      ),
    );
  }
}
