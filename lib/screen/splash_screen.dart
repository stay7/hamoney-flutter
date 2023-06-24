import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/member_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/screen/login_screen.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/workflow/manage_auth_token.dart';
import 'package:logger/logger.dart';

import '../workflow/loadForReinstalled.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key? key,
    required this.manageAuthToken,
    required this.accountBookRepository,
    required this.memberRepository,
    required this.userRepository,
    required this.loadRequiredData,
  }) : super(key: key);

  static const String routeName = "splash";

  final ManageAuthToken manageAuthToken;
  final AccountBookRepository accountBookRepository;
  final UserRepository userRepository;
  final MemberRepository memberRepository;
  final LoadRequiredData loadRequiredData;

  final Logger logger = Logger();

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loading();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  loading() async {
    if (widget.accountBookRepository.findCurrentAccountBook() != null) {
      widget.logger.i('data exist');
      widget.loadRequiredData.invoke();
    }
    widget.manageAuthToken.initializeOAuthToken();
  }

  route() async {
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
