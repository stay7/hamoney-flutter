import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/signup/signup_join_bloc.dart';
import 'package:hamoney/screen/signup_done_screen.dart';
import 'package:hamoney/widgets/hamoney_text_button.dart';

import '../widgets/hamoney_color_button.dart';
import 'main_screen.dart';

class SignupJoinScreen extends StatelessWidget {
  static const routeName = "signup_join";

  const SignupJoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupJoinBloc, SignupJoinState>(
      listener: (context, state) {
        if (state is AccountBookLinked) {
          Navigator.of(context).pushNamedAndRemoveUntil(MainScreen.routeName, (route) => false);
        }
        if (state is AccountBookCreated) {
          Navigator.of(context).pushNamedAndRemoveUntil(SignupDoneScreen.routeName, (route) => false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '회원가입 (2/2)',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: const [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '함께 사용하시나요?',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Text(
                        '초대받은 가계부 코드를 입력해주세요',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '코드입력',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, left: 20.0, right: 20.0),
          child: Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HamoneyColorButton(
                  onPressed: () {
                    context.read<SignupJoinBloc>().add(UseAloneClicked());
                  },
                  text: "가계부 연결",
                ),
                HamoneyTextButton(
                  onPressed: () {
                    context.read<SignupJoinBloc>().add(UseAloneClicked());
                  },
                  text: '혼자 사용할래요',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
