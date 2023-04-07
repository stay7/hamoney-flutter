part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupCompleted extends SignupState {
  SignupCompleted({required this.email, required this.nickname, required this.id});

  final String email;
  final String nickname;
  final String id;
}
