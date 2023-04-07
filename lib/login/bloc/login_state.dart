part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {
  LoginLoading();
}

class LoginSuccess extends LoginState {
  LoginSuccess(this.email);

  final String email;
}

class LoginError extends LoginState {
  LoginError();
}
