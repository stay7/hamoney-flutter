import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/workflow/manage_auth_token.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.manageAuthToken}) : super(key: key);

  static const String routeName = "splash";

  final ManageAuthToken manageAuthToken;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() async {
    widget.manageAuthToken.initializeOAuthToken();

    if (await widget.manageAuthToken.checkOAuthTokenExist()) {
      Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
    } else {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    }
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
