import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import '../resource/resource.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              const Text(
                '간편하게 로그인',
                style: TextStyle(fontSize: 16, color: Color(0xffa6a6a6)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigator.pushNamed(SignupFirstScreen.routeName);
                    },
                    child: SvgPicture.asset(AppImage.loginKakao),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigator.pushNamed(LoginScreen.routeName);
                    },
                    child: SvgPicture.asset(AppImage.loginApple),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigator.pushNamed(LoginScreen.routeName);
                    },
                    child: SvgPicture.asset(AppImage.loginGoogle),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
