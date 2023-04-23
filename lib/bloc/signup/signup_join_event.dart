part of 'signup_join_bloc.dart';

@immutable
abstract class SignupJoinEvent {}

class UseAloneClicked extends SignupJoinEvent {}

class UseTogetherClicked extends SignupJoinEvent {}
