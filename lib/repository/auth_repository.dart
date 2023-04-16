import 'package:hamoney/client/auth_client.dart';
import 'package:hamoney/secure_storage.dart';
import 'package:logging/logging.dart';

import '../model/oauth_request.dart';
import '../model/oauth_token.dart';
import '../model/signup_request.dart';
import '../model/user.dart';

class AuthRepository {
  AuthRepository({required this.authClient});

  final AuthClient authClient;
  String? _signupToken;
  OAuthToken? _oauthTokens;
  Logger logger = Logger('AuthRepository');

  Future<User> signup(String email, String nickname) async {
    logger.info('signup $email, $nickname');

    final request = SignupRequest(nickname: nickname, email: email, token: _signupToken!);
    final response = await authClient.signup(request);

    _oauthTokens = OAuthToken(
      accessToken: response.data.accessToken,
      refreshToken: response.data.refreshToken,
    );

    return User(
      id: response.data.id,
      email: response.data.email,
      nickname: response.data.nickname,
    );
  }

  Future<OAuthToken> issueToken(String email) async {
    logger.info('issueToken $email, $_signupToken');

    final response = await authClient.issueToken(OAuthRequest(email: email, token: _signupToken!));
    logger.info(response);
    _oauthTokens = response.data;
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
