import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:hamoney/repository/signup_repository.dart';
import 'package:hamoney/secure_storage.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<KakaoTokenRequested>(_onKakaoTokenRequested);
    on<GoogleTokenRequested>(_onGoogleTokenRequested);
    on<AppleTokenRequested>(_onAppleTokenRequested);
  }

  final AuthRepository authRepository;

  FutureOr<void> _onKakaoTokenRequested(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final result = await FlutterWebAuth2.authenticate(url: dotenv.env['KAKAO_AUTH_URL']!, callbackUrlScheme: "hamoney");

    final storage = SecureStorage().storage;
    final email = parseEmailFromAppScheme(result);
    storage.write(key: SecureStorageKey.email, value: email);
    storage.write(key: SecureStorageKey.token, value: parseTokensFromAppScheme(result));

    switch (parseResultFromAppScheme(result)) {
      case "success":
        emit(LoginSuccess(email));
        break;
      case "existed":
        emit(LoginExisted(email));
        break;
      default:
        break;
    }
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

  String parseResultFromAppScheme(String appScheme) {
    // success?email={}, existed?email={}
    final List<String> resultAndParams = appScheme.split("://")[1].split("?");
    return resultAndParams[0].trim();
  }

  String parseEmailFromAppScheme(String appScheme) {
    // success?email={}, existed?email={}
    final List<String> resultAndParams = appScheme.split("://")[1].split("?");
    return resultAndParams[1].split("=")[1].trim();
  }

  //TODO: 토큰을 내려주는게 맞을까? 아니면 토큰을 내려주는 API를 호출하는게 맞을까?
  String parseTokensFromAppScheme(String appScheme) {
    // success?email={}, existed?accessToken={}?refreshToken={}
    final List<String> resultAndParams = appScheme.split("://")[1].split("?");
    return resultAndParams[2].split("=")[1].trim();
  }
}
