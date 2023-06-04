part of 'signup_join_bloc.dart';

@immutable
abstract class SignupJoinState {}

class SignupJoinInitial extends SignupJoinState {}

class AccountBookCreated extends SignupJoinState {
  AccountBookCreated({required this.code});

  final int code;
}

class AccountBookLinked extends SignupJoinState {}
