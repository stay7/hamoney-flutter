import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hamoney/bloc/login/login_bloc.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import '../resource/resource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginNewUser) {
          navigator.pushReplacementNamed(
            SignupScreen.routeName,
            arguments: SignupScreenArgument(state.email),
          );
        } else if (state is LoginExistedUser) {
          navigator.pushReplacementNamed(MainScreen.routeName);
        }
      },
      child: Scaffold(
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
                        context.read<LoginBloc>().add(KakaoTokenRequested());
                      },
                      child: SvgPicture.asset(AppImage.loginKakao),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<LoginBloc>().add(AppleTokenRequested());
                      },
                      child: SvgPicture.asset(AppImage.loginApple),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<LoginBloc>().add(GoogleTokenRequested());
                      },
                      child: SvgPicture.asset(AppImage.loginGoogle),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
