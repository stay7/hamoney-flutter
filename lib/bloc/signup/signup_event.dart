part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

// 신규 이메일 - 신규 유저
class SignupRequested extends SignupEvent {
  SignupRequested({required this.email, required this.nickname});

  final String email;
  final String nickname;
}