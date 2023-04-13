import 'package:dio/dio.dart';
import 'package:hamoney/domain/oauth_token.dart';
import 'package:hamoney/domain/user.dart';
import 'package:hamoney/hamoney_config.dart';
import 'package:retrofit/retrofit.dart';

import '../base_response.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: HamoneyConfig.baseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/signup')
  Future<HttpResponse<BaseResponse<SignupResponse>>> signup(@Body() SignupRequest signupRequest);

  @POST('/oauth/issue')
  Future<HttpResponse<BaseResponse<OAuthToken>>> issueToken(@Body() OAuthRequest oAuthRequest);
}

class SignupResponse {
  final String id;
  final String email;
  final String nickname;
  final String accessToken;
  final String refreshToken;

  SignupResponse(this.id, this.email, this.nickname, this.accessToken, this.refreshToken);
}

class OAuthRequest {
  final String email;
  final String token;

  OAuthRequest(this.email, this.token);
}

class SignupRequest {
  final String nickname;
  final String email;
  final String token;

  SignupRequest(this.nickname, this.email, this.token);
}
