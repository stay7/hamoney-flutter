import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/signup/signup_join_bloc.dart';
import 'package:hamoney/screen/home_screen.dart';

class SignupJoinScreen extends StatelessWidget {
  static const routeName = "signup_join";

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupJoinBloc, SignupJoinState>(
      listener: (context, state) {
        if (state is AccountBookSynced) {
          Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
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
                    TextField(
                      decoration: InputDecoration(labelText: "나의 코드"),
                      readOnly: true,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "상대방코드", hintText: "상대방 코드를 입력해주세요."),
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
            height: 50,
            margin: EdgeInsets.only(bottom: 17),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<SignupJoinBloc>().add(UseTogetherClicked());
                    },
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    child: const Text(
                      '연결하기',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<SignupJoinBloc>().add(UseAloneClicked());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    child: const Text(
                      '혼자 사용하기',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
