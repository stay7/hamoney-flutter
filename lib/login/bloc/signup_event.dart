part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupRequested extends SignupEvent {
  SignupRequested();
}
