part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupRequested extends SignupEvent {
  SignupRequested({required this.email, required this.nickname});

  final String email;
  final String nickname;
}

class OAuthTokenRequested extends SignupEvent {
  OAuthTokenRequested({required this.email});

  final String email;
}
