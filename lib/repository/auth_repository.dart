import 'package:hamoney/client/auth_client.dart';
import 'package:hamoney/client/response/signup_response.dart';
import 'package:logger/logger.dart';

import '../model/oauth_token.dart';
import '../client/request/oauth_request.dart';
import '../client/request/signup_request.dart';

class AuthRepository {
  AuthRepository({required this.authClient});

  final AuthClient authClient;
  String? _signupToken;
  Logger logger = Logger();

  Future<SignupResponse> signup(String email, String nickname) async {
    final request = SignupRequest(nickname: nickname, email: email, token: _signupToken!);
    final response = await authClient.signup(request);

    return response.data;
  }

  Future<OAuthToken> issueToken(String email) async {
    final response = await authClient.issueToken(OAuthRequest(
      email: email,
      token: _signupToken!,
    ));
    return response.data;
  }

  set setSignupToken(String value) => _signupToken = value;
}
