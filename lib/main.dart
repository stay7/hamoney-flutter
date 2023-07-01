import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:hamoney/di.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/hamoney_route.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/screen/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:logger/logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'bloc/bloc_observer.dart';

Future main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load(fileName: "config/.env.local");
  // await dotenv.load(fileName: "config/.env.dev");

  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_NATIVE_APP_KEY']);
  await Hive.initFlutter();

  Logger.level = Level.info;
  await initializeDateFormatting();
  await DI(getIt: GetIt.instance).initialize();

  Bloc.observer = Observer();
  runApp(HamoneyApp());
}

class HamoneyApp extends StatelessWidget {
  HamoneyApp({super.key});

  final MaterialColor materialBlack = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => getIt.get<AuthRepository>(),
        ),
        RepositoryProvider<AccountBookRepository>(
          create: (context) => getIt.get<AccountBookRepository>(),
        ),
        RepositoryProvider<UserRepository>(create: (context) => getIt.get<UserRepository>()),
        RepositoryProvider<UIRepository>(create: (context) => getIt.get<UIRepository>()),
        RepositoryProvider<SpendingRepository>(create: (context) => getIt.get<SpendingRepository>()),
      ],
      child: MaterialApp(
        title: 'HAMONEY',
        theme: ThemeData(
          fontFamily: 'SpoqaHanSans',
          primaryColor: Colors.white,
          primarySwatch: materialBlack,
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
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
        initialRoute: SplashScreen.routeName,
        onGenerateRoute: (settings) => HamoneyRoute.onGenerateRoute(settings),
      ),
    );
  }
}
