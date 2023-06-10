part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {
  LoginLoading();
}

class LoginNewUser extends LoginState {
  LoginNewUser(this.email);

  final String email;
}

class LoginExistedUser extends LoginState {
  LoginExistedUser(this.email);

  final String email;
}

class LoginError extends LoginState {
  LoginError();
}
