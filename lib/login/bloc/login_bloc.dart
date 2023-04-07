import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:meta/meta.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:url_launcher/url_launcher.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<KakaoTokenRequested>(_onKakaoTokenRequested);
    on<GoogleTokenRequested>(_onGoogleTokenRequested);
    on<AppleTokenRequested>(_onAppleTokenRequested);
  }

  FutureOr<void> _onKakaoTokenRequested(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final result = await FlutterWebAuth2.authenticate(url: dotenv.env['KAKAO_AUTH_URL']!, callbackUrlScheme: "hamoney");
    emit(LoginSuccess(parseEmailFromAppScheme(result)));
  }

  FutureOr<void> _onGoogleTokenRequested(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    await FlutterWebAuth2.authenticate(url: dotenv.env['GOOGLE_AUTH_URL']!, callbackUrlScheme: "hamoney");
  }

  FutureOr<void> _onAppleTokenRequested(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    print(credential);
  }

  String parseEmailFromAppScheme(String appScheme) {
    // success?email={}
    final List<String> successAndParams = appScheme.split("://")[1].split("?");
    if (successAndParams[0] != "success") {
      throw FormatException("format not matched: ${successAndParams[0]}");
    }
    return successAndParams[1].split("=")[1].trim();
  }
}
