import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/hamoney_route.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import './screen/login_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'login/bloc/login_bloc.dart';

Future main() async {
  await dotenv.load(fileName: "config/.env");
  KakaoSdk.init(nativeAppKey: dotenv.env['KAKAO_NATIVE_APP_KEY']);
  runApp(const HamoneyApp());
}

class HamoneyApp extends StatelessWidget {
  const HamoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HAMONEY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    );
  }
}
