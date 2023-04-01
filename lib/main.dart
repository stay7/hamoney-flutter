import 'package:flutter/material.dart';
import 'package:hamoney/route.dart';
import './screen/login_screen.dart';

void main() {
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
        home: const LoginScreen(),
        onGenerateRoute: (settings) => HamoneyRoute.onGenerateRoute(settings)
    );
  }
}