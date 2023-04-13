import 'package:dio/dio.dart';
import 'package:hamoney/client/auth_client.dart';
import 'package:hamoney/secure_storage.dart';

import '../base_response.dart';
import '../domain/oauth_token.dart';
import '../domain/user.dart';

class AuthRepository {
  AuthRepository({required this.authClient});

  final AuthClient authClient;
  String? _signupToken;
  OAuthToken? _oauthTokens;

  Future<User> signup(String email, String nickname) async {
    final response = await authClient.signup(SignupRequest(nickname, email, _signupToken!));
    _oauthTokens = OAuthToken(
      accessToken: response.data.data.accessToken,
      refreshToken: response.data.data.refreshToken,
    );

    return User(
      id: response.data.data.id,
      email: response.data.data.email,
      nickname: response.data.data.nickname,
    );
  }

  Future<OAuthToken> issueToken(String email) async {
    final response = await authClient.issueToken(OAuthRequest(email, _signupToken!));
    _oauthTokens = response.data.data;
    _saveOAuthTokens(_oauthTokens!.accessToken, _oauthTokens!.refreshToken);
    return _oauthTokens!;
  }

  void _saveOAuthTokens(String accessToken, String refreshToken) {
    SecureStorage().storage.write(key: SecureStorageKey.accessToken, value: accessToken);
    SecureStorage().storage.write(key: SecureStorageKey.refreshToken, value: refreshToken);
  }

  String? get signupToken => _signupToken;

  set setSignupToken(String value) => _signupToken = value;

  OAuthToken? get oauthTokens => _oauthTokens;

  set setOAuthTokens(OAuthToken value) => _oauthTokens = value;
}
