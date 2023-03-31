import 'package:flutter/material.dart';
import '../resource/resource.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(AppImage.loginKakao),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(AppImage.loginNaver),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(AppImage.loginGoogle),
              )
            ],
          )
        ],
      ),
    );
  }
}
