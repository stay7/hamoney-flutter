part of 'signup_join_bloc.dart';

@immutable
abstract class SignupJoinState {}

class SignupJoinInitial extends SignupJoinState {}

class AccountBookCreated extends SignupJoinState {}

class AccountBookLinked extends SignupJoinState {}
