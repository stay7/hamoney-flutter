import 'package:hamoney/dio/dioUtil.dart';
import 'package:hamoney/repository/client/auth_client.dart';
import 'package:hamoney/secure_storage.dart';
import 'package:logger/logger.dart';

import '../model/oauth_request.dart';
import '../model/oauth_token.dart';
import '../model/signup_request.dart';
import '../model/user.dart';

class AuthRepository {
  AuthRepository({required this.authClient});

  final AuthClient authClient;
  String? _signupToken;
  OAuthToken? _oauthTokens;
  Logger logger = Logger();

  Future<User> signup(String email, String nickname) async {
    logger.i('signup $email, $nickname');

    final request = SignupRequest(nickname: nickname, email: email, token: _signupToken!);
    final response = await authClient.signup(request);

    _oauthTokens = OAuthToken(
      accessToken: response.data.accessToken,
      refreshToken: response.data.refreshToken,
    );
    SecureStorage().saveOAuthToken(_oauthTokens!);
    DioUtil().initAuthorizedDio();

    return User(
      id: response.data.id,
      email: response.data.email,
      nickname: response.data.nickname,
    );
  }

  Future<OAuthToken> issueToken(String email) async {
    logger.i('issueToken $email, $_signupToken');

    final response = await authClient.issueToken(OAuthRequest(email: email, token: _signupToken!));
    logger.i(response);
    _oauthTokens = response.data;
    SecureStorage().saveOAuthToken(_oauthTokens!);
    DioUtil().initAuthorizedDio();
    return _oauthTokens!;
  }

  String? get signupToken => _signupToken;

  set setSignupToken(String value) => _signupToken = value;

  OAuthToken? get oauthTokens => _oauthTokens;

  set setOAuthTokens(OAuthToken value) => _oauthTokens = value;
}
