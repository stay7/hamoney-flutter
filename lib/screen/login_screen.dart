import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hamoney/bloc/login_bloc.dart';
import 'package:hamoney/screen/home_screen.dart';
import 'package:hamoney/screen/signup_first_screen.dart';
import '../bloc/signup_bloc.dart';
import '../resource/resource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          navigator.pushReplacementNamed(
            SignupScreen.routeName,
            arguments: SignupScreenArgument(state.email),
          );
        } else if (state is LoginExisted) {
          context.read<SignupBloc>().add(OAuthTokenRequested(email: state.email));
          navigator.pushReplacementNamed(
            HomeScreen.routeName,
            arguments: HomeScreen(),
          );
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
