part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class KakaoTokenRequested extends LoginEvent {
  KakaoTokenRequested();
}

class GoogleTokenRequested extends LoginEvent {
  GoogleTokenRequested();
}

class AppleTokenRequested extends LoginEvent {
  AppleTokenRequested();
}
