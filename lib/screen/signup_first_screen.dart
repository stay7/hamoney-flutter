import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/screen/signup_second_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen(this.email);

  final String email;

  static const routeName = "signup";

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {},
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '회원가입 (1/2)',
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
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        '가입 정보를 입력해주세요',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "이메일"),
                      initialValue: email,
                      readOnly: true,
                      enabled: false,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "닉네임", hintText: "닉네임을 입력해주세요"),
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
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(bottom: 17),
            child: ElevatedButton(
              onPressed: () {
                navigator.pushNamed(SignupJoinScreen.routeName);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              child: const Text(
                '다음',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignupScreenArgument {
  SignupScreenArgument(this.email);

  final String email;
}
