import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/signup/signup_done_bloc.dart';
import 'package:hamoney/screen/main_screen.dart';
import 'package:hamoney/widgets/hamoney_color_button.dart';

import '../widgets/hamoney_disabled_text_field.dart';

class SignupDoneScreen extends StatelessWidget {
  const SignupDoneScreen({Key? key}) : super(key: key);

  static const routeName = "signup_done";

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as SignupDoneScreenArgument;

    return BlocListener<SignupDoneBloc, SignupDoneState>(
      listener: (context, state) {},
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '가입완료!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff191919),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '친구에게 코드를 공유할 수 있어요',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Color(0xff191919),
                ),
                textAlign: TextAlign.center,
              ),
              HamoneyDisabledTextField(
                title: '내코드',
                content: arguments.code.toString(),
                contentStyle: TextStyle(
                  color: Color(0xff191919),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(
            bottom: 20,
            left: 16.0,
            right: 16.0,
          ),
          child: HamoneyColorButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(MainScreen.routeName, (route) => false);
            },
            text: "가계부 시작하기",
          ),
        ),
      ),
    );
  }
}

class SignupDoneScreenArgument {
  SignupDoneScreenArgument(this.code);

  final int code;
}
